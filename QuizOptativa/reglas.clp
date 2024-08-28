(deftemplate cliente
  (slot presupuesto)
  (slot plan)
  (slot preferencia))

(deftemplate recomendacion
  (slot destino)
  (slot detalles))

(defrule recomendar-destino-economico-familiar-playa
  (cliente (presupuesto "Económico") (plan "Familiar") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Cancún, México") 
                         (detalles "Cancún es ideal para unas vacaciones familiares económicas. Ofrece hermosas playas, actividades para todas las edades y alojamiento accesible. Precio: $1,000 USD."))))

(defrule recomendar-destino-economico-familiar-montana
  (cliente (presupuesto "Económico") (plan "Familiar") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Bariloche, Argentina") 
                         (detalles "Bariloche es perfecto para familias que buscan aventura en la montaña a un precio accesible. Actividades como senderismo y esquí. Precio: $1,200 USD."))))

(defrule recomendar-destino-economico-familiar-excursiones
  (cliente (presupuesto "Económico") (plan "Familiar") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Cusco, Perú") 
                         (detalles "Cusco ofrece una experiencia cultural única con excursiones a sitios históricos como Machu Picchu a precios accesibles. Precio: $1,400 USD."))))

(defrule recomendar-destino-economico-familiar-rio
  (cliente (presupuesto "Económico") (plan "Familiar") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Amazonas, Brasil") 
                         (detalles "El Amazonas ofrece una experiencia inolvidable en la selva con actividades acuáticas y observación de vida silvestre. Precio: $1,500 USD."))))

(defrule recomendar-destino-economico-familiar-cultura
  (cliente (presupuesto "Económico") (plan "Familiar") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Ciudad de México, México") 
                         (detalles "La Ciudad de México es ideal para familias interesadas en explorar la rica historia y cultura local. Precio: $1,000 USD."))))

(defrule recomendar-destino-economico-familiar-urbanismo
  (cliente (presupuesto "Económico") (plan "Familiar") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Bogotá, Colombia") 
                         (detalles "Bogotá ofrece una mezcla de historia y modernidad, perfecta para familias explorando la ciudad a bajo costo. Precio: $1,200 USD."))))

(defrule recomendar-destino-economico-amigos-playa
  (cliente (presupuesto "Económico") (plan "Amigos") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Punta Cana, República Dominicana") 
                         (detalles "Punta Cana es perfecto para grupos de amigos que buscan diversión en la playa, con opciones de alojamiento económico y vida nocturna activa. Precio: $1,100 USD."))))

(defrule recomendar-destino-economico-amigos-montana
  (cliente (presupuesto "Económico") (plan "Amigos") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Parque Nacional Torres del Paine, Chile") 
                         (detalles "Ideal para amigos aventureros, este parque ofrece paisajes montañosos espectaculares y opciones de trekking a precios accesibles. Precio: $1,300 USD."))))

(defrule recomendar-destino-economico-amigos-excursiones
  (cliente (presupuesto "Económico") (plan "Amigos") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "La Paz, Bolivia") 
                         (detalles "La Paz ofrece emocionantes excursiones y aventuras a un costo reducido, ideal para grupos de amigos exploradores. Precio: $1,200 USD."))))

(defrule recomendar-destino-economico-amigos-rio
  (cliente (presupuesto "Económico") (plan "Amigos") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Río de Janeiro, Brasil") 
                         (detalles "Río de Janeiro es perfecto para amigos que buscan una mezcla de playas, vida urbana y actividades acuáticas, todo a precios accesibles. Precio: $1,400 USD."))))

(defrule recomendar-destino-economico-amigos-cultura
  (cliente (presupuesto "Económico") (plan "Amigos") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Cartagena, Colombia") 
                         (detalles "Cartagena ofrece una rica experiencia cultural con historia, arquitectura colonial y una vibrante vida nocturna, ideal para amigos. Precio: $1,000 USD."))))

(defrule recomendar-destino-economico-amigos-urbanismo
  (cliente (presupuesto "Económico") (plan "Amigos") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Buenos Aires, Argentina") 
                         (detalles "Buenos Aires es perfecta para amigos que disfrutan de una ciudad vibrante con opciones culturales, gastronómicas y de vida nocturna, a un costo moderado. Precio: $1,300 USD."))))

(defrule recomendar-destino-economico-pareja-playa
  (cliente (presupuesto "Económico") (plan "Pareja") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Tulum, México") 
                         (detalles "Tulum es un destino romántico para parejas que buscan playas paradisíacas, ambiente tranquilo y alojamientos económicos. Precio: $1,200 USD."))))

(defrule recomendar-destino-economico-pareja-montana
  (cliente (presupuesto "Económico") (plan "Pareja") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Mendoza, Argentina") 
                         (detalles "Mendoza ofrece un entorno montañoso con opciones de bodegas y actividades al aire libre perfectas para parejas. Precio: $1,300 USD."))))

(defrule recomendar-destino-economico-pareja-excursiones
  (cliente (presupuesto "Económico") (plan "Pareja") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Antigua, Guatemala") 
                         (detalles "Antigua es una ciudad colonial encantadora, ideal para parejas que disfrutan de la cultura y las excursiones a sitios históricos. Precio: $1,100 USD."))))

(defrule recomendar-destino-economico-pareja-rio
  (cliente (presupuesto "Económico") (plan "Pareja") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Buzios, Brasil") 
                         (detalles "Buzios es un pequeño pueblo costero, perfecto para una escapada romántica con actividades acuáticas y ambiente relajado. Precio: $1,300 USD."))))

(defrule recomendar-destino-economico-pareja-cultura
  (cliente (presupuesto "Económico") (plan "Pareja") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Cuzco, Perú") 
                         (detalles "Cuzco, con su rica historia y arquitectura, es ideal para parejas que desean explorar la cultura y tradiciones incas. Precio: $1,400 USD."))))

(defrule recomendar-destino-economico-pareja-urbanismo
  (cliente (presupuesto "Económico") (plan "Pareja") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Santiago, Chile") 
                         (detalles "Santiago ofrece una experiencia urbana completa con parques, museos, y restaurantes de calidad, a precios accesibles. Precio: $1,200 USD."))))

(defrule recomendar-destino-economico-solitario-playa
  (cliente (presupuesto "Económico") (plan "Solitario") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Koh Samui, Tailandia") 
                         (detalles "Koh Samui es ideal para viajeros solitarios que buscan tranquilidad y belleza natural en playas exóticas, con opciones de alojamiento económico. Precio: $1,100 USD."))))

(defrule recomendar-destino-economico-solitario-montana
  (cliente (presupuesto "Económico") (plan "Solitario") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Cusco, Perú") 
                         (detalles "Cusco ofrece una combinación única de historia y naturaleza, ideal para el viajero solitario que busca aventuras en la montaña. Precio: $1,200 USD."))))

(defrule recomendar-destino-economico-solitario-excursiones
  (cliente (presupuesto "Económico") (plan "Solitario") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Hanoi, Vietnam") 
                         (detalles "Hanoi es perfecto para un viajero solitario que disfruta de la cultura y excursiones organizadas en un entorno rico en historia. Precio: $1,300 USD."))))

(defrule recomendar-destino-economico-solitario-rio
  (cliente (presupuesto "Económico") (plan "Solitario") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Chiang Mai, Tailandia") 
                         (detalles "Chiang Mai, con su atmósfera tranquila y oportunidades para actividades acuáticas en el río, es ideal para un viajero solitario. Precio: $1,100 USD."))))

(defrule recomendar-destino-economico-solitario-cultura
  (cliente (presupuesto "Económico") (plan "Solitario") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Fez, Marruecos") 
                         (detalles "Fez es un destino cultural fascinante para viajeros solitarios, con su rica historia y mercados vibrantes. Precio: $1,200 USD."))))

(defrule recomendar-destino-economico-solitario-urbanismo
  (cliente (presupuesto "Económico") (plan "Solitario") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Lisboa, Portugal") 
                         (detalles "Lisboa es perfecta para explorar en solitario, con su arquitectura histórica, calles empedradas y opciones asequibles de comida y alojamiento. Precio: $1,300 USD."))))

(defrule recomendar-destino-estandar-familiar-playa
  (cliente (presupuesto "Estándar") (plan "Familiar") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Miami, Estados Unidos") 
                         (detalles "Miami ofrece hermosas playas y una amplia gama de actividades para familias, combinando confort y entretenimiento a un precio moderado. Precio: $2,500 USD."))))

(defrule recomendar-destino-estandar-familiar-montana
  (cliente (presupuesto "Estándar") (plan "Familiar") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Aspen, Estados Unidos") 
                         (detalles "Aspen es un destino ideal para familias que disfrutan de la montaña, ofreciendo actividades de invierno y verano con un buen nivel de confort. Precio: $2,800 USD."))))

(defrule recomendar-destino-estandar-familiar-excursiones
  (cliente (presupuesto "Estándar") (plan "Familiar") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Florencia, Italia") 
                         (detalles "Florencia es ideal para familias que desean combinar cultura con excursiones, ofreciendo una experiencia rica en historia y arte. Precio: $2,700 USD."))))

(defrule recomendar-destino-estandar-familiar-rio
  (cliente (presupuesto "Estándar") (plan "Familiar") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Ginebra, Suiza") 
                         (detalles "Ginebra es perfecta para familias, ofreciendo paisajes de río y montaña, con actividades al aire libre y un ambiente seguro. Precio: $2,600 USD."))))

(defrule recomendar-destino-estandar-familiar-cultura
  (cliente (presupuesto "Estándar") (plan "Familiar") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Kyoto, Japón") 
                         (detalles "Kyoto ofrece una experiencia cultural profunda, con templos, jardines y tradiciones perfectas para explorar en familia. Precio: $2,900 USD."))))

(defrule recomendar-destino-estandar-familiar-urbanismo
  (cliente (presupuesto "Estándar") (plan "Familiar") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Vancouver, Canadá") 
                         (detalles "Vancouver combina urbanismo con naturaleza, ofreciendo a las familias un entorno seguro con muchas actividades al aire libre. Precio: $2,750 USD."))))

(defrule recomendar-destino-estandar-amigos-playa
  (cliente (presupuesto "Estándar") (plan "Amigos") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Ibiza, España") 
                         (detalles "Ibiza es perfecta para grupos de amigos que buscan diversión en la playa y una vibrante vida nocturna, todo con un buen nivel de confort. Precio: $2,400 USD."))))

(defrule recomendar-destino-estandar-amigos-montana
  (cliente (presupuesto "Estándar") (plan "Amigos") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Queenstown, Nueva Zelanda") 
                         (detalles "Queenstown es ideal para amigos aventureros que disfrutan de actividades como el esquí, el senderismo y otras experiencias al aire libre en un entorno montañoso espectacular. Precio: $2,600 USD."))))

(defrule recomendar-destino-estandar-amigos-excursiones
  (cliente (presupuesto "Estándar") (plan "Amigos") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Marrakech, Marruecos") 
                         (detalles "Marrakech ofrece una mezcla exótica de cultura y aventura, ideal para grupos de amigos que buscan experiencias nuevas y emocionantes. Precio: $2,300 USD."))))

(defrule recomendar-destino-estandar-amigos-rio
  (cliente (presupuesto "Estándar") (plan "Amigos") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Interlaken, Suiza") 
                         (detalles "Interlaken es un destino perfecto para grupos de amigos que disfrutan de actividades acuáticas y paisajes montañosos. Precio: $2,500 USD."))))

(defrule recomendar-destino-estandar-amigos-cultura
  (cliente (presupuesto "Estándar") (plan "Amigos") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Sevilla, España") 
                         (detalles "Sevilla es ideal para amigos que buscan sumergirse en la rica cultura española, con su arquitectura impresionante y vibrante vida local. Precio: $2,350 USD."))))

(defrule recomendar-destino-estandar-amigos-urbanismo
  (cliente (presupuesto "Estándar") (plan "Amigos") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Chicago, Estados Unidos") 
                         (detalles "Chicago ofrece una emocionante mezcla de urbanismo y entretenimiento, perfecto para grupos de amigos que buscan explorar una gran ciudad. Precio: $2,450 USD."))))

(defrule recomendar-destino-estandar-pareja-playa
  (cliente (presupuesto "Estándar") (plan "Pareja") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Maui, Hawái") 
                         (detalles "Maui es un destino ideal para parejas que buscan una experiencia romántica en la playa, con alojamiento cómodo y paisajes impresionantes. Precio: $2,700 USD."))))

(defrule recomendar-destino-estandar-pareja-montana
  (cliente (presupuesto "Estándar") (plan "Pareja") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Whistler, Canadá") 
                         (detalles "Whistler es perfecto para parejas que aman la montaña, ofreciendo actividades tanto en invierno como en verano, en un entorno acogedor. Precio: $2,800 USD."))))

(defrule recomendar-destino-estandar-pareja-excursiones
  (cliente (presupuesto "Estándar") (plan "Pareja") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Santorini, Grecia") 
                         (detalles "Santorini combina la belleza natural con excursiones encantadoras, ideal para parejas que buscan explorar juntos un destino romántico. Precio: $2,900 USD."))))

(defrule recomendar-destino-estandar-pareja-rio
  (cliente (presupuesto "Estándar") (plan "Pareja") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Salzburgo, Austria") 
                         (detalles "Salzburgo, con su pintoresco río y paisajes montañosos, es perfecto para una escapada romántica en pareja. Precio: $2,650 USD."))))

(defrule recomendar-destino-estandar-pareja-cultura
  (cliente (presupuesto "Estándar") (plan "Pareja") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Praga, República Checa") 
                         (detalles "Praga es una ciudad rica en historia y cultura, ideal para parejas que desean explorar juntos su encanto medieval. Precio: $2,800 USD."))))

(defrule recomendar-destino-estandar-pareja-urbanismo
  (cliente (presupuesto "Estándar") (plan "Pareja") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Buenos Aires, Argentina") 
                         (detalles "Buenos Aires ofrece una vibrante mezcla de cultura, urbanismo y romance, ideal para parejas que disfrutan de la vida de la ciudad. Precio: $2,700 USD."))))

(defrule recomendar-destino-estandar-solitario-playa
  (cliente (presupuesto "Estándar") (plan "Solitario") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Phuket, Tailandia") 
                         (detalles "Phuket es ideal para el viajero solitario que busca playas exóticas y una mezcla de relajación y aventura. Precio: $2,400 USD."))))

(defrule recomendar-destino-estandar-solitario-montana
  (cliente (presupuesto "Estándar") (plan "Solitario") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Banff, Canadá") 
                         (detalles "Banff ofrece paisajes montañosos impresionantes y actividades de aventura para el viajero solitario que busca conectar con la naturaleza. Precio: $2,600 USD."))))

(defrule recomendar-destino-estandar-solitario-excursiones
  (cliente (presupuesto "Estándar") (plan "Solitario") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Petra, Jordania") 
                         (detalles "Petra es un destino histórico fascinante, perfecto para el viajero solitario que disfruta de la exploración y las aventuras culturales. Precio: $2,700 USD."))))

(defrule recomendar-destino-estandar-solitario-rio
  (cliente (presupuesto "Estándar") (plan "Solitario") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Basel, Suiza") 
                         (detalles "Basel, con su hermoso río Rin, ofrece una experiencia relajante y cultural para el viajero solitario. Precio: $2,550 USD."))))

(defrule recomendar-destino-estandar-solitario-cultura
  (cliente (presupuesto "Estándar") (plan "Solitario") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Edimburgo, Escocia") 
                         (detalles "Edimburgo, con su rica historia y eventos culturales, es ideal para el viajero solitario que busca inmersión cultural. Precio: $2,600 USD."))))

(defrule recomendar-destino-estandar-solitario-urbanismo
  (cliente (presupuesto "Estándar") (plan "Solitario") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Melbourne, Australia") 
                         (detalles "Melbourne ofrece una vibrante vida urbana y una rica cultura, perfecta para explorar en solitario. Precio: $2,700 USD."))))

(defrule recomendar-destino-premium-familiar-playa
  (cliente (presupuesto "Premium") (plan "Familiar") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Maldivas") 
                         (detalles "Las Maldivas ofrecen un entorno paradisíaco para unas vacaciones familiares de lujo, con alojamientos exclusivos y actividades acuáticas para todas las edades. Precio: $10,000 USD."))))

(defrule recomendar-destino-premium-familiar-montana
  (cliente (presupuesto "Premium") (plan "Familiar") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Zermatt, Suiza") 
                         (detalles "Zermatt ofrece un escenario montañoso espectacular, perfecto para unas vacaciones familiares con actividades exclusivas y hospedaje de lujo. Precio: $9,500 USD."))))

(defrule recomendar-destino-premium-familiar-excursiones
  (cliente (presupuesto "Premium") (plan "Familiar") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Safari en Tanzania") 
                         (detalles "Un safari en Tanzania ofrece una experiencia familiar inolvidable con alojamiento en lodges de lujo y emocionantes excursiones para observar la fauna salvaje. Precio: $12,000 USD."))))

(defrule recomendar-destino-premium-familiar-rio
  (cliente (presupuesto "Premium") (plan "Familiar") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Crucero por el Danubio, Europa") 
                         (detalles "Un crucero por el Danubio ofrece una experiencia lujosa para toda la familia, con visitas a ciudades históricas y confort a bordo. Precio: $11,000 USD."))))

(defrule recomendar-destino-premium-familiar-cultura
  (cliente (presupuesto "Premium") (plan "Familiar") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Kyoto, Japón") 
                         (detalles "Kyoto ofrece una experiencia cultural rica y exclusiva, ideal para familias que desean sumergirse en la historia y tradiciones japonesas. Precio: $10,500 USD."))))

(defrule recomendar-destino-premium-familiar-urbanismo
  (cliente (presupuesto "Premium") (plan "Familiar") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Nueva York, Estados Unidos") 
                         (detalles "Nueva York ofrece una experiencia urbana de lujo para toda la familia, con hospedaje en hoteles exclusivos y acceso a eventos y atracciones únicas. Precio: $11,500 USD."))))

(defrule recomendar-destino-premium-amigos-playa
  (cliente (presupuesto "Premium") (plan "Amigos") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "St. Barts, Caribe") 
                         (detalles "St. Barts es un destino de lujo ideal para grupos de amigos, ofreciendo playas exóticas, exclusivas villas y una vibrante vida nocturna. Precio: $9,800 USD."))))

(defrule recomendar-destino-premium-amigos-montana
  (cliente (presupuesto "Premium") (plan "Amigos") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Aspen, Estados Unidos") 
                         (detalles "Aspen es perfecto para grupos de amigos que buscan una experiencia de esquí de lujo, con resorts exclusivos y actividades de montaña. Precio: $10,200 USD."))))

(defrule recomendar-destino-premium-amigos-excursiones
  (cliente (presupuesto "Premium") (plan "Amigos") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Expedición en la Antártida") 
                         (detalles "Una expedición en la Antártida es una experiencia única para grupos de amigos aventureros, con cruceros de lujo y exploración de paisajes helados. Precio: $15,000 USD."))))

(defrule recomendar-destino-premium-amigos-rio
  (cliente (presupuesto "Premium") (plan "Amigos") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Crucero por el Amazonas, Brasil") 
                         (detalles "Un crucero por el Amazonas es ideal para amigos que buscan una experiencia exótica y lujosa en el corazón de la selva. Precio: $12,500 USD."))))

(defrule recomendar-destino-premium-amigos-cultura
  (cliente (presupuesto "Premium") (plan "Amigos") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Florencia, Italia") 
                         (detalles "Florencia ofrece una experiencia cultural rica y exclusiva, perfecta para grupos de amigos que disfrutan del arte y la historia en un entorno lujoso. Precio: $10,000 USD."))))

(defrule recomendar-destino-premium-amigos-urbanismo
  (cliente (presupuesto "Premium") (plan "Amigos") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Hong Kong, China") 
                         (detalles "Hong Kong es una vibrante metrópoli ideal para grupos de amigos que buscan una experiencia urbana exclusiva con lujo y modernidad. Precio: $10,500 USD."))))

(defrule recomendar-destino-premium-pareja-playa
  (cliente (presupuesto "Premium") (plan "Pareja") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Bora Bora, Polinesia Francesa") 
                         (detalles "Bora Bora es el destino ideal para parejas que buscan una experiencia romántica y lujosa en playas paradisíacas. Precio: $12,000 USD."))))

(defrule recomendar-destino-premium-pareja-montana
  (cliente (presupuesto "Premium") (plan "Pareja") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Chamonix, Francia") 
                         (detalles "Chamonix ofrece una experiencia montañosa exclusiva y romántica, ideal para parejas que disfrutan del lujo en un entorno natural impresionante. Precio: $10,800 USD."))))

(defrule recomendar-destino-premium-pareja-excursiones
  (cliente (presupuesto "Premium") (plan "Pareja") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Safari en Kenia") 
                         (detalles "Un safari en Kenia ofrece una experiencia de lujo para parejas que buscan aventuras exclusivas en la naturaleza. Precio: $11,500 USD."))))

(defrule recomendar-destino-premium-pareja-rio
  (cliente (presupuesto "Premium") (plan "Pareja") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Crucero por el Sena, París") 
                         (detalles "Un crucero por el Sena en París es una experiencia romántica y lujosa, ideal para parejas que buscan una escapada única en la ciudad del amor. Precio: $10,700 USD."))))

(defrule recomendar-destino-premium-pareja-cultura
  (cliente (presupuesto "Premium") (plan "Pareja") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Viena, Austria") 
                         (detalles "Viena ofrece una experiencia cultural de lujo, ideal para parejas que desean sumergirse en la historia, la música y el arte en un entorno elegante. Precio: $10,400 USD."))))

(defrule recomendar-destino-premium-pareja-urbanismo
  (cliente (presupuesto "Premium") (plan "Pareja") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Tokio, Japón") 
                         (detalles "Tokio es una ciudad vibrante y moderna, perfecta para parejas que buscan una experiencia urbana de lujo y sofisticación. Precio: $11,000 USD."))))

(defrule recomendar-destino-premium-solitario-playa
  (cliente (presupuesto "Premium") (plan "Solitario") (preferencia "Playa"))
  =>
  (assert (recomendacion (destino "Isla de Hamilton, Australia") 
                         (detalles "La Isla de Hamilton es un refugio lujoso y sereno, ideal para viajeros solitarios que buscan exclusividad y tranquilidad en un entorno paradisíaco. Precio: $10,500 USD."))))

(defrule recomendar-destino-premium-solitario-montana
  (cliente (presupuesto "Premium") (plan "Solitario") (preferencia "Montaña"))
  =>
  (assert (recomendacion (destino "Lake Louise, Canadá") 
                         (detalles "Lake Louise ofrece un entorno montañoso impresionante y exclusivo, perfecto para quienes buscan paz y lujo en solitario. Precio: $9,800 USD."))))

(defrule recomendar-destino-premium-solitario-excursiones
  (cliente (presupuesto "Premium") (plan "Solitario") (preferencia "Excursiones"))
  =>
  (assert (recomendacion (destino "Expedición en el Ártico, Noruega") 
                         (detalles "Una expedición en el Ártico ofrece una experiencia única y lujosa para quienes buscan una aventura en solitario en los confines del mundo. Precio: $14,000 USD."))))

(defrule recomendar-destino-premium-solitario-rio
  (cliente (presupuesto "Premium") (plan "Solitario") (preferencia "Río"))
  =>
  (assert (recomendacion (destino "Crucero por el Rin, Alemania") 
                         (detalles "Un crucero por el Rin es una experiencia relajante y exclusiva, ideal para quienes desean disfrutar de paisajes hermosos en soledad. Precio: $11,200 USD."))))

(defrule recomendar-destino-premium-solitario-cultura
  (cliente (presupuesto "Premium") (plan "Solitario") (preferencia "Cultura"))
  =>
  (assert (recomendacion (destino "Salzburgo, Austria") 
                         (detalles "Salzburgo es un destino cultural perfecto para quienes desean explorar la historia y el arte en un entorno refinado y exclusivo. Precio: $10,300 USD."))))

(defrule recomendar-destino-premium-solitario-urbanismo
  (cliente (presupuesto "Premium") (plan "Solitario") (preferencia "Urbanismo"))
  =>
  (assert (recomendacion (destino "Seúl, Corea del Sur") 
                         (detalles "Seúl es una ciudad dinámica y moderna, ideal para quienes buscan explorar la cultura urbana y disfrutar de un lujo discreto en solitario. Precio: $10,900 USD."))))

