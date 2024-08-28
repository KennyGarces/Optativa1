#Kenny Garces, Kamila pineda
import clips
import tkinter as tk
from tkinter import messagebox, ttk

# Inicializar el entorno CLIPS
env = clips.Environment()

# Cargar las reglas desde el archivo
env.load('reglas.clp')

def obtener_recomendacion():
    # Capturar la entrada del usuario
    presupuesto = combo_presupuesto.get()
    plan = combo_plan.get()
    preferencia = combo_preferencia.get()

    # Reiniciar el entorno para limpiar hechos previos
    env.reset()

    # Assertar los hechos del cliente
    env.assert_string(f'(cliente (presupuesto "{presupuesto}") (plan "{plan}") (preferencia "{preferencia}"))')

    # Ejecutar las reglas
    env.run()

    # Limpiar la sección de recomendaciones previas
    text_recomendacion.config(state=tk.NORMAL)
    text_recomendacion.delete('1.0', tk.END)

    # Obtener las recomendaciones
    recomendaciones = [f"Destino: {fact['destino']}\nDescripción: {fact['detalles']}\n\n" 
                        for fact in env.facts() if fact.template.name == 'recomendacion']

    if recomendaciones:
        for recomendacion_text in recomendaciones:
            text_recomendacion.insert(tk.END, recomendacion_text)
    else:
        text_recomendacion.insert(tk.END, "No se encontraron recomendaciones.")
    
    text_recomendacion.config(state=tk.DISABLED)

def actualizar_recomendacion(event):
    obtener_recomendacion()

# Crear la interfaz gráfica
root = tk.Tk()
root.title('Sistema Experto en Turismo - Destinos Perfectos')

# Información detallada sobre los tipos de presupuestos, planes y preferencias
informacion = """
Presupuestos:
1. Económico: Ideal para presupuestos limitados. Incluye vuelos en aerolíneas de bajo costo, alojamiento en hostales o hoteles económicos, y actividades turísticas básicas. Rango de precios: $500 - $1,500 USD.
2. Estándar: Equilibrio entre precio y calidad. Incluye vuelos en aerolíneas comerciales, alojamiento en hoteles de 3-4 estrellas, y una variedad de actividades. Rango de precios: $1,500 - $3,000 USD.
3. Premium: Para quienes buscan lujo y exclusividad. Incluye vuelos en clase business o primera clase, alojamiento en hoteles de 5 estrellas o resorts, servicios personalizados y actividades exclusivas. Rango de precios: $3,000 - $10,000+ USD.

Planes:
1. Familiar: Ideal para viajes con niños y adultos. Incluye actividades para todas las edades y alojamiento en hoteles familiares.
2. Amigos: Perfecto para grupos de amigos que buscan aventura y diversión. Incluye actividades grupales y vida nocturna.
3. Pareja: Diseñado para escapadas románticas. Incluye cenas íntimas, paseos en pareja y alojamiento en hoteles boutique.
4. Solitario: Ideal para viajeros en solitario que buscan explorar por su cuenta. Incluye actividades personalizadas y alojamiento en hostales o pequeños hoteles.

Preferencias:
1. Playa: Sol, arena y mar. Perfecto para relajarse o practicar deportes acuáticos.
2. Montaña: Naturaleza, aventura y paisajes impresionantes. Ideal para senderismo, escalada o deportes de invierno.
3. Excursiones: Explorar nuevos lugares y culturas a través de viajes organizados.
4. Río: Actividades acuáticas en entornos naturales. Ideal para kayak, rafting o simplemente nadar.
5. Cultura: Sumergirse en la historia, tradiciones y costumbres de diferentes lugares.
6. Urbanismo: Explorar ciudades, su arquitectura, arte y vida nocturna.
"""

tk.Label(root, text=informacion, justify=tk.LEFT, wraplength=500).grid(row=0, column=0, columnspan=2)

# Crear elementos de la interfaz
tk.Label(root, text='Presupuesto:').grid(row=1, column=0)
combo_presupuesto = ttk.Combobox(root, values=["Económico", "Estándar", "Premium"])
combo_presupuesto.grid(row=1, column=1)
combo_presupuesto.bind("<<ComboboxSelected>>", actualizar_recomendacion)

tk.Label(root, text='Plan:').grid(row=2, column=0)
combo_plan = ttk.Combobox(root, values=["Familiar", "Amigos", "Pareja", "Solitario"])
combo_plan.grid(row=2, column=1)
combo_plan.bind("<<ComboboxSelected>>", actualizar_recomendacion)

tk.Label(root, text='Preferencia:').grid(row=3, column=0)
combo_preferencia = ttk.Combobox(root, values=["Playa", "Montaña", "Excursiones", "Río", "Cultura", "Urbanismo"])
combo_preferencia.grid(row=3, column=1)
combo_preferencia.bind("<<ComboboxSelected>>", actualizar_recomendacion)

# Botón para obtener recomendación
tk.Button(root, text='Obtener Recomendación', command=obtener_recomendacion).grid(row=4, column=0, columnspan=2)

# Sección para mostrar las recomendaciones
text_recomendacion = tk.Text(root, height=10, width=60, state=tk.DISABLED)
text_recomendacion.grid(row=5, column=0, columnspan=2)

# Ejecutar la interfaz gráfica
root.mainloop()
