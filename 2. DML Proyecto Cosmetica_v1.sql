USE Cosmetica_v1;

INSERT INTO `USUARIOS`
(
    idusuario,
    nomusuario,      
    apellidos,
    foto,   
    fecnacimiento,   
    direccion,   
    email,
    contrasena,      
    telefono
)
VALUES
(
    1,
    "Paula",
    "Sanz Nuñez",
    "fotos/angelinajolie.jpg",
    "1995-05-16",
    "Calle Venus, 43",
    "pauli95@gmail.com",
    "12121212",
    "698774502"
),
(
    2,
    "Sergio",
    "Martin Hidalgo",
    "fotos/bradpitt.jpg",
    "2000-02-28",
    "Calle Gerardo Diego, 3",
    "sergiomh@hotmail.com",
    "12121212",
    "672321041"
),
(
    3,
    "Luis",
    "Casanovas Sevillano",
    "fotos/leonardodicaprio.jpg",
    "1990-04-13",
    "Calle Rafael Herrera, 9",
    "luis_casanovas@gmail.com",
    "12121212",
    "643820923"
),
(
    4,
    "Ximena",
    "Guijarro Luz",
    "fotos/galgadot.jpg",
    "1997-03-26",
    "Calle de Orense, 71",
    "xime_guiluz@gmail.com",
    "12121212",
    "684425420"
),
(
    5,
    "Maura",
    "Riera Almansa",
    "fotos/gongli.jpg",
    "1989-01-21",
    "Calle Alameda, 58",
    "maura.rial@gmail.com",
    "12121212",
    "677183167"
),
(
    6,
    "Angela",
    "Ortega Perez",
    "fotos/jenniferlawrence.jpg",
    "1985-12-10",
    "Calle Avenida de Concha Espina, 34",
    "angela_ortegaperez@hotmail.com",
    "12121212",
    "682081262"
),
(
    7,
    "Tiffany",
    "Harris Hill",
    "fotos/margotrobbie.jpg",
    "1996-11-08",
    "Calle Ferrer del Rio, 15",
    "tiffany_harris.hill@outlook.com",
    "12121212",
    "661875992"
),
(
    8,
    "Jessica",
    "Gomez Torres",
    "fotos/sandrabullock.jpg",
    "1998-07-12",
    "Calle Poseidon, 11",
    "jess_gomezt@hotmail.com",
    "12121212",
    "665268725"
);

INSERT INTO `PEDIDOSONLINE`
(
    idpedido,
    idusuario,
    numpedido,
    fecpedido,
    preciopedido
)
VALUES
(
    1,
    8,
    "303-9682014",
    "2022-08-18",
    18.99
),
(
    2,
    5,
    "302-6587355",
    "2022-04-06",
    16.00
),
(
    3,
    1,
    "122-4040351",
    "2022-02-14",
    22.95
),
(
    4,
    2,
    "156-7654934",
    "2022-01-25",
    14.99
),
(
    5,
    6,
    "404-0312512",
    "2018-10-01",
    38.00
    
),
(
    6,
    4,
    "404-9943644",
    "2022-03-19",
    8.50
),
(
    7,
    7,
    "222-5865820",
    "2017-09-02",
    38.50
),
(
    8,
    3,
    "505-2000356",
    "2021-06-07",
    24.90
),
(
    9,
    5,
    "302-6587331",
    "2022-05-06",
    4.95
);

INSERT INTO `CODIGOSPROMOCIONALES`
(
    idcodigopromocional,
    codigopromocional,
    fecinicio,
    descuento
)
VALUES
(
    1,
    "BOLD10",
    "2022-01-01",
    10.00
),
(
    2,
    "BOLD15",
    "2022-01-01",
    15.00
),
(
    3,
    "BOLD20",
    "2022-01-01",
    20.00
),
(
    4,
    "BOLD25",
    "2022-01-01",
    25.00
);

INSERT INTO `CADUCIDADCODIGOSPROMOCIONALES`
(
    idcodigopromocional,
    fecfincodigo
)
VALUES
(
    1,
    "2023-01-01"
),
(
    2,
    "2023-01-01"
),
(
    3,
    "2023-01-01"
),
(
    4,
    "2023-01-01"
);

INSERT INTO `USUARIOSCODIGOSPROMOCIONALES`
(
    idusuario,
    idcodigopromocional,
    fecinicio
)
VALUES
(
    2,
    1,
    "2022-01-16"
),
(
    4,
    1,
    "2022-03-19"
),
(
    5,
    3,
    "2022-03-08"
);

INSERT INTO `CODIGOSPROMOCIONALESPORPEDIDO`
(
    idpedido,
    idusuario,
    idcodigopromocional
)
VALUES
(
    4,
    2,
    1
),
(
    6,
    4,
    1
),
(
    2,
    5,
    3
);

INSERT INTO `CATEGORIAS`
(
    idcategoria,
    nomcategoria,
    icono
)
VALUES
(
    1,
    "CUIDADO FACIAL",
    "Cosmetica/iconofacial.png"
),
(
    2,
    "MAQUILLAJE",
    "Cosmetica/iconomaquillaje.png"
),
(
    3,
    "CUIDADO CORPORAL",
    "Cosmetica/iconocorporal.png"
);

INSERT INTO `SUBCATEGORIAS`
(
    idsubcategoria,
    nomsubcategoria,
    idcategoria
)
VALUES
(
    1,
    "Cuidado facial",
    1
),
(
    2,
    "Limpieza facial",
    1
),
(
    3,
    "Rostro",
    2
),
(
    4,
    "Ojos",
    2
),
(
    5,
    "Labios",
    2
),
(
    6,
    "Cabello",
    3
),
(
    7,
    "Cuerpo",
    3
);

INSERT INTO `SUBCATEGORIATIPOS`
(
    idsubcategoriatipo,
    nomsubcategoriatipo,
    idsubcategoria
)
VALUES
(
    1,
    "Tonico",
    1
),
(
    2,
    "Serum",
    1
),
(
    3,
    "Crema de día",
    1
),
(
    4,
    "Crema de noche",
    1
),
(
    5,
    "Limpiador facial",
    2
),
(
    6,
    "Exfoliante",
    2
),
(
    7,
    "Base de maquillaje",
    3
),
(
    8,
    "Iluminador",
    3
),
(
    9,
    "Delianeador de ojos",
    4
),
(
    10,
    "Máscara de pestañas",
    4
),
(
    11,
    "Barra de labios",
    5
),
(
    12,
    "Bálsamo labial",
    5
),
(
    13,
    "Champú",
    6
),
(
    14,
    "Acondicionador",
    6
),
(
    15,
    "Gel de ducha",
    7
),
(
    16,
    "Crema hidratante",
    7
);

INSERT INTO `MARCAS`
(
    idmarca,
    nommarca,
    foto,
    descripcion
)
VALUES
(
    1,
    "Klairs",
    "Cosmetica/logoklairs.png",
    "Es una línea de cosméticos coreana especializada en tratamientos para pieles sensibles que apuesta por fórmulas con ingredientes básicos,
    imprescindibles y eficaces. Sus productos son naturales sin colorantes, alcohol, parabenos ni perfumes artificiales y con packaging ecológico,
    están diseñados específicamente para las pieles sensibles porque usan solamente ingredientes que no son agresivos con la piel. 
    Su compromiso por la cosmética natural ha convertido a esta marca en una de las preferidas por los consumidores no solo en Corea sino también 
    en España. La línea de productos de Klairs incluye todo tipo de tratamientos faciales destinados al cuidado de las pieles más delicadas.
    Cremas y mascarillas con efecto calmante; jabones y limpiadores para limpiar los poros en profundidad y purificar la piel;
    o tónicos para restaurar la hidratación de la piel cansada sin irritar la piel."
),
(
    2,
    "The Ordinary",
    "Cosmetica/logoordinary.jpg",
    "Es una marca de cosméticos que está revolucionando el mundo de la belleza. Cuenta con una gran variedad de productos veganos, ¿y qué significa esto?,
    pues que sus productos están libres de sulfatos, aceites minerales o animales, mercurio, tintes artificiales o parabenos. Una empresa que apuesta 
    por un equipo especializado en bioquímica para la ideación de sus productos. Ofrecen una calidad-precio inigualable, acercando las fórmulas con ingredientes
    puros a todos los consumidores. Se definen como, 'La compañía de la belleza anormal'."
),
(
    3,
    "Kiehl's",
    "Cosmetica/logokiehls.jpg",
    "Es una marca de cosméticos estadounidense que nace como farmacia en el East Village de Nueva York, al estilo de las boticas de la vieja Europa.
    Su fundador, John Kiehl, crea un negocio cuya originalidad y riqueza residen en una asociación única de conocimientos cosméticos, farmacéuticos, 
    botánicos y medicinales que han ido enriqueciéndose a lo largo de generaciones cautivando a personas en todo el mundo por haber sabido mantener 
    tanto los estándares de eficacia y calidad de sus fórmulas, así como la obsesión por el servicio a sus clientes."
),
(
    4,
    "AROMATICA",
    "Cosmetica/logoaromatica.png",
    "Nacida en Corea en 2004, Aromatica fue fundada con el fin de crear productos que protegieran la piel con ingredientes naturales y de confianza.
    Además, en 2016, Aromatica fue la primera marca coreana en recibir la certificación US EWG (Environmental Working Group) VERIFIED, significando así 
    que se comprometía a usar los productos más puros y sostenibles y ofrecer un cuidado seguro y profesional. Por tanto, los productos de Aromatica 
    son 100% veganos y libres de crueldad animal, utilizando solamente extractos de plantas y aceites esenciales de origen natural."
),
(
    5,
    "Benton",
    "Cosmetica/logobenton.jpg",
    "Es una firma coreana se dedica exclusivamente a hacer productos para pieles muy sensibles. Benton utiliza fórmulas naturales y tiene distintas líneas
    para tratar los problemas de la piel más comunes."
),
(
    6,
    "LANEIGE",
    "Cosmetica/logolaneige.png",
    "Lanzada en 1994 por Amore Pacific, LANEIGE es actualmente una de las mayores marcas de cosméticos coreanos del mundo. LANEIGE es una marca de lujo de belleza coreana 
    que persigue la ciencia del agua como filosofía para ayudar a las mujeres a conseguir un cutis radiante y húmedo desde dentro. Los productos de LANEIGE, que se enorgullecen
    de su tecnología Water Science™, hacen hincapié en la hidratación de la piel, lo que hace que la colección de cuidado de la piel de LANEIGE sea tan codiciada,
    así como la colección de maquillaje de LANEIGE, que ha cosechado críticas positivas de LANEIGE en Internet."
),
(
    7,
    "YVES ROCHER",
    "Cosmetica/logoyvesrocher.png",
    "Yves Rocher es el creador de la Cosmética Vegetal, basada en décadas de experiencia y un profundo conocimiento de la naturaleza y las plantas.
    Nuestros laboratorios de investigación descubren nuevos y poderosos ingredientes a base de plantas para realizar cosméticos altamente efectivos.
    Con su amplia gama de productos, Yves Rocher cubre todos los aspectos de los cuidados de belleza: faciales, antiedad, perfumes, corporales, reductores y anticelulíticos, capilares, maquillaje..."
),
(
    8,
    "Facetheory",
    "Cosmetica/logofacetheory.png",
    "Solo porque un producto sea caro no significa que funcione. Lanzamos Facetheory en 2015 porque queríamos encontrar una forma mejor y más justa de crear cosmética: cosmética que funciona, vegana y que no cueste un riñón.
    Combinamos lo mejor de la naturaleza y de la ciencia para mejorar la piel. Nuestro objetivo es que todo el mundo sienta la belleza en su propia piel para que no tengan que preocuparse. Ya nos preocupamos nosotros por tu piel."
),
(
    9,
    "GIORGIO ARMANI",
    "Cosmetica/logoarmani.jpg",
    "Descubre el mundo de Armani beauty. Del labial rojo mate al icónico cuidado de la piel y perfumes, experimente las formulas sensuales de Armani beauty."
),
(
    10,
    "NYX",
    "Cosmetica/logonyx.png",
    "Una comunidad de espíritus independientes que creen en una autoexpresión sin límites. Juntos empoderamos a cada enamoradx del maquillaje para que viva, sueñe y experimente a todo color.
    Ofreciendo siempre maquillaje PROFESIONAL, fórmulas expertas y pigmentos de máxima calidad, ¡ACCESIBLES PARA TODXS!."
),
(
    11,
    "CLIO",
    "Cosmetica/logoclio.png",
    "CLIO es una marca de K Beauty que celebra a las mujeres que aceptan el reto de encontrar un 'nuevo yo'. CLIO te anima a mostrar diferentes representaciones de ti misma que despiertan la emoción
    y la confianza en ti misma. Con su innovadora calidad, sus sensacionales colores y su elegante diseño, los productos de maquillaje CLIO se han convertido en un producto básico de K Beauty que todo el mundo busca para cada temporada. "
),
(
    12,
    "ETUDE HOUSE",
    "Cosmetica/logoetudehouse.png",
    "Conocida como la primera marca especializada en maquillaje de color desde 1985, Etude House Korea establece su propio imperio de K-beauty sobre un lema muy simple e inspirador: la vida es dulce.
    Desde la colección de maquillaje de Etude House hasta las soluciones para el cuidado de la piel de Etude House, todos los productos de Etude House reflejan la personalidad divertida, dulce y juguetona de la marca de belleza coreana,
    que permite a todo el mundo dejarse llevar por la imaginación rosa y burbujeante de la belleza."
),
(
    13,
    "SHISHEIDO",
    "Cosmetica/logoshisheido.png",
    "Fundada en 1872, SHISEIDO representa el epítome de la belleza oriental con productos de máxima calidad para el cuidado de la piel. Con más de 145 años de experiencia y conocimientos sobre el cuidado de la piel,
    SHISEIDO sigue combinando filosofías e innovaciones de belleza orientales y occidentales e inspirando a mujeres de todo el mundo. Con la visión y el objetivo de 'Toda una vida de belleza', SHISEIDO se dedica a fabricar
    productos de cuidado de la piel atemporales para resolver los problemas de la piel, como las manchas, las ojeras, las arrugas y el cutis apagado."
),
(
    14,
    "ISOI",
    "Cosmetica/logoisoi.jpg",
    "Para seguir reforzando las capacidades naturales de la piel, la marca coreana de cosmética natural isoi es ampliamente conocida como la marca K sin ingredientes químicos. La marca promete vender únicamente productos fiables
    y seguros para el cuidado de la piel, y también son amables con las personas sensibles e irritadas por las fórmulas hipoalergénicas. isoi siempre enumera los ingredientes que utiliza, y la mayoría de ellos son de origen vegetal."
),
(
    15,
    "SOME BY MI",
    "Cosmetica/logosomebymi.png",
    "Conoce tu última obsesión de K-Beauty: SOME BY MI. Recién lanzada en 2016, SOME BY MI es una de las últimas marcas de K-Beauty que merece un lugar en tu radar de cuidado de la piel. Manteniéndose fiel a la esencia de la 'belleza pura',
    SOME BY MI es una marca auténtica y honesta con un amor por la madre naturaleza. Por no hablar de que todos los ingredientes de SOME BY MI son suaves y naturales con resultados duraderos que transforman la piel."
),
(
    16,
    "Kao",
    "Cosmetica/logokao.jpg",
    "La marca japonesa Kao no sólo es celebrada por los amantes de la belleza, sino más allá, gracias a su amplia gama de productos: desde el cuidado de la piel hasta los cosméticos, pasando por el cuidado del cabello,
    el cuidado del cuerpo y el cuidado del hogar. La filosofía de marca de Kao, basada en el respeto mutuo, la confianza y la responsabilidad social consciente, se plasma plenamente en los productos de belleza de calidad de la marca para hombres y mujeres."
),
(
    17,
    "Rituals",
    "Cosmetica/logorituals.png",
    "Nos hemos inspirado en la sabiduría y las tradiciones antiguas de las culturas asiáticas para crear una amplia colección de productos lujosos pero asequibles para el cuerpo y el hogar. Esperamos enriquecer tu vida usando unas fragancias características
    y únicas que han sido diseñadas y elaboradas por los mejores perfumistas del mundo."
);

INSERT INTO `PRODUCTOS`
(
    idproducto,
    nomproducto,
    descripcion,
    precio,
    idsubcategoriatipo,
    idmarca
)
VALUES
(
    1,
    "Supple Preparation Facial Toner",
    "Este tónico es 100% vegano, está formulado con extractos vegetales y su función principal es la de equilibrar el pH de la piel y así prepararla para los siguientes pasos de la rutina de belleza. Ayuda también a mejorar la piel y a hacerla menos propensa a irritaciones
    y a que los poros no se obstruyan, previniendo problemas cutáneos como la aparición de espinillas o puntos negros. Los ingredientes principales de este tónico hidratante son el Phyto-Oligo, que aporta hidratación de manera uniforme a toda la piel y evita la sequedad,
    y aminoácidos de trigo con propiedades antiinflamatorias, que reducen el enrojecimiento. Es una buena opción si tienes la piel sensible o tienes acné.",
    23.95,
    1,
    1
),
(
    2,
    "The Ordinary Glycolic Acid 7% Solucion Tónica",
    "Glycolic Acid 7% Toning Solution es una solución tónica con propiedades exfoliantes. Sus principales componentes son el ácido glicólico, aminoácidos, aloe vera, ginseng, agua de rosas y bayas de Tasmania.
    El ácido glicólico es uno de los llamados alfa hidroxiácidos , más conocidos como los AHA en la cosmética. Como todo este grupo de ácidos, conseguimos una exfoliación suave de la piel aportando de nuevo la luminosidad a nuestra piel, además de fomentar la generación de colágeno.",
    10.40,
    1,
    2
),
(
    3,
    "Calendula Herbal-Extract Toner",
    "Tónico facial clásico de culto está formulado con caléndula, alantoína y raíz de bardana. Nuestro tónico suave y calmante sin alcohol está formulado para pieles normales a grasas, incluidas las sensibles.",
    38.50,
    1,
    3
),
(
    4,
    "Reviving Rose Infusion Serum",
    "Su textura sedosa tipo gel acaricia las pieles más deshidratadas aportándoles todos los beneficios de la rosa. Contiene tanto agua de rosas orgánica como aceite esencial de rosas, que hidratan la piel, la reafirman y la dejan jugosa y llena de vitalidad. Contiene también aloe vera y extractos de caléndula,
    que lo convierten en un sérum perfecto para pieles secas pero sensibles, y un complejo de bayas que, con sus antioxidantes, aportan luminosidad y un potente cuidado antiedad a la piel.",
    42.95,
    2,
    4
),
(
    5,
    "Tea Tree Serum",
    "Nada más y nada menos que un 80% de ingredientes que provienen del árbol de té. Agua de hoja de árbol de té, extractos y unas gotitas de su aceite, acompañados de pantenol y ácido hialurónico. Su fórmula, al igual que la del limpiador y el mist de la línea, es ideal para regular el exceso de sebo de pieles
    mixtas o grasas, pero también para refrescar pieles cansadas y estresadas y calmar las irritadas. El extracto de remolacha que contiene, además, es ideal para hidratar la piel muy ligeramente y equilibrarla, y el árbol de té ayuda a rebajar la inflamación de los granitos que podamos tener.",
    22.95,
    2,
    5
),
(
    6,
    "LANEIGE Radian C Cream",
    "La crema humectante con vitaminas potenciada por Radian-C Super Blend ayuda a eliminar las manchas ultrafinas visibles y no visibles. Crema vitamínica de hidratación profunda que elimina las preocupaciones de la piel desde las manchas oscuras visibles hasta las manchas oscuras ultrafinas no visibles con el potente Radian-C Super Blend,
    para presentar una tez clara, brillante y radiante.",
    24.90,
    3,
    6
),
(
    7,
    "Crema Rica Non-Stop 48 horas Hidratación",
    "Nuestros Expertos en Cosmétique Végétale han seleccionado el Edulis, por su capacidad de captar el agua y retenerla en sus hojas. Su extracto único, el Agua Celular de Edulis, activador de hidratación, ayuda a almacenar* el agua en todas las capas de la piel, la mantiene durante más tiempo y la libera para una hidratación continua. 
    Inmediatamente, la piel queda nutrida y recupera todo su confort. Durante 48h, la piel se mantiene hidratada para un rostro terso y luminoso, desde la mañana hasta la noche.",
    20.00,
    3,
    7
),
(
    8,
    "Crema Multiaccion Noche",
    "Esta crema de noche deja la piel lisa de forma inmediata. Desde la primera noche, la luminosidad se reaviva y los rasgos se relajan. Inmediatamente, las arrugas y  el tono de la piel se vuelve uniforme*. Día tras día, las arrugas y pequeñas arrugas se reducen y la piel se refuerza.
    Enriquecido con Néctar de Brotes Vegetales, reconocido por su capacidad única de renovación.",
    54.00,
    4,
    7
),
(
    9,
    "Crema de Noche Relajante M10",
    "La Crema de Noche Relajante M10 es apta para todo tipo de piel. La glicerina y el ácido hialurónico más puro consiguen la mejor hidratación nocturna. El poder antioxidante de la vitamina C contribuye a iluminar la piel y previene la inflamación. La opción perfumada contiene lavanda, que ayuda a reducir la ansiedad y el insomnio.",
    14.99,
    4,
    8
),
(
    10,
    "Gel Limpiador Purificante",
    "Este Gel Limpiador Purificante libera suavemente a la piel de las impurezas, los restos de maquillaje y el exceso de sebo. La piel queda matificada, limpia y purificada. Está formulado con Hierbabuena Bio, reconocida por sus propiedades refrescantes, y cultivada en agroecologia en nuestros campos de La Gacilly.
    Recomendada para pieles de mixtas a grasas y/o con imperfecciones.",
    8.95,
    5,
    7
),
(
    11,
    "Crema Limpiador Aclarante C2",
    "La Crema Limpiadora Aclarante C2 está especialmente formulada para pieles grasas y con imperfecciones y actúa como un peeling facial con ácido glicólico. Una potente combinación de hidroxiácidos (alfa y beta) purifica los poros y reduce las rojeces mientras rejuvenece tu piel. Disponible perfumado o sin perfume.
    La opción perfumada contiene aceite esencial de mandarina prensado en frío.",
    16.00,
    5,
    8
),
(
    12,
    "Exfoliante Purificante",
    "Este Exfoliante Purificante exfolia suavemente, purifica y matifica perfectamente la piel. ¡Piel más lisa, mate y purifica!. Está formulado con Hierbabuena Bio, reconocida por sus propiedades refrescantes, y cultivada en agroecologia en nuestros campos de La Gacilly.",
    7.95,
    6,
    7
),
(
    13,
    "Luminous Silk Base de Maquillaje",
    "Luminous Silk Foundation es una base de maquillaje ligera, de cobertura media y modulable, con un acabado radiante. Proporciona una luminosidad perfecta y una tez radiante para realzar la belleza natural.
    Corrige, unifica y perfecciona la tez para disfrutar de una piel radiante al instante. Su fórmula hidratante ofrece una cobertura modulable ligera a media.",
    45.00,
    7,
    9
),
(
    14,
    "Born to Glow Highlighter",
    "Cargado con nácares luminiscentes para atraer, reflejar y refractar la luz natural, nuestros iluminadores Born to Glow Highlighters realzan tus rasgos con un brillo ultra intenso.",
    9.90,
    8,
    10
),
(
    15,
    "Prism Highlighter Duo",
    "Un dúo de resaltadores viene con dos opciones de color, con tonos cálidos y tonos fríos para seleccionar, ayuda a crear un brillo resplandeciente en los contornos faciales.
    Se adhiere muy bien a la cara con base de maquillaje sin apelmazarse ni desmoronarse. Iluminador compacto tanto perlado como brillante en una paleta doble para ayudar a crear cualquier look luminoso.",
    20.50,
    8,
    11
),
(
    16,
    "Superproof Brush Liner",
    "Este delineador líquido ultrafino resistente al agua crea líneas precisas. El pincel súper delgado le permite crear un delineador de ojos delgado pero vívido con facilidad.
    Con una capa de recubrimiento especial, resistente al agua y al aceite y no mancha. Cuenta con tanque de almacenamiento de tinta tipo pluma y tapa hermética, evita que la línea del ojo se corte,
    crea un delineador de ojos de larga duración.",
    12.80,
    9,
    11
),
(
    17,
    "Drawing Show Brush Liner",
    "Transforma tu apariencia con un bolígrafo suave. ¡Con el pincel suave, puedes dibujar ojos de gato delgados, gruesos, largos o sexys!
    Resistente al agua y al sudor, el polímero de ajuste perfecto le permite mantener sus bordes afilados y líneas en su punto todo el día.",
    8.50,
    9,
    12
),
(
    18,
    "Lash Perm Curl Fix Mascara",
    "Una máscara para rizos que mantiene las pestañas finas poderosamente rizadas durante 24 horas gracias a la tecnología Curl 24H Technology de ETUDE.",
    10.75,
    10,
    12
),
(
    19,
    "Mascara de Pestañas Intense Metamorphose",
    "La Máscara de pestañas Intense Métamorphose  revela unas pestañas visiblemente más densas, curvadas y alargadas durante 24 horas. Su cepillo de fibra en forma de reloj de arena, intuitivo,
    suave y fácil de usar, recubre cada pestaña desde el extremo interior hasta el exterior del ojo y garantiza un volumen impresionante y un resultado negro intenso, para una mirada expectacular.",
    13.50,
    10,
    7
),
(
    20,
    "Muhly Romance Better Lips Talk",
    "Muhly But Better (Mlbb) color que cae sutilmente desde el rosa Muhly de tono bajo hasta la sensibilidad otoñal del rosa Muhly con el brillo de la puesta de sol hasta el marrón brillante.
    Una textura aterciopelada que potencia la textura suave y la adherencia para que puedas sentir el color vivo y la suavidad que se adhiere suavemente con un solo toque.",
    9.70,
    11,
    12
),
(
    21,
    "Cle de Peau Beaute",
    "Color de labios radiante y cuidado que ayuda a que los labios se sientan suaves y flexibles con la humedad. Con tintes de apariencia natural por sí solos, 
    cada Lip Glorifier también realza el color cuando se coloca debajo del lápiz labial.",
    38.00,
    11,
    13
),
(
    22,
    "Sensitive Moisture Lip Balm",
    "Un bálsamo labial que hidrata e hidrata los labios secos y escamosos. Bálsamo labial incoloro ideal para todas. Para piel sensible.",
    16.00,
    12,
    14
),
(
    23,
    "Champú Purificante",
    "Este Champú Purificante con Ortiga limpia y purifica el cuero cabelludo. Elimina el exceso de sebo y limpia el cuero cabelludo, por lo que podrás lavarte el pelo con menos frecuencia. 
    Cabellos limpios durante 48 Horas.",
    4.95,
    13,
    7
),
(
    24,
    "Cica Peptide Anti Hair Loss",
    "Puede ayudar a aliviar los síntomas de pérdida de cabello. Formulado con 11 tipos de péptidos, proporciona hidratación y nutrientes al cuero cabelludo.
    Nutre el cuero cabelludo con Biotina y proteínas de frijol, trigo y maíz, para ayudar a lograr un cabello saludable.",
    18.99,
    13,
    15
),
(
    25,
    "Asience Moisture Rich Conditioner",
    "La serie de cuidado de la humedad de 24 horas ASIENCE humedad rica proporciona hasta 24 horas de hidratación continua para una suavidad y flexibilidad duraderas. 
    Liberación del cabello seco y áspero. Contiene ingredientes que retienen la humedad como granada, miel, perla, aloe y ácido succínico (no extraído del ámbar). Fragancia floral exótica.",
    8.50,
    14,
    16
),
(
    26,
    "Gel de Ducha Almendra y Flor de Azahar",
    "Para disfrutar d un momento de suavidad y relajación en la ducha o el baño, nuestra cadena de experos, única desde 1959, ha seleccionado y combinado el gel de Aloe Vera,
    procedente de la Agricultura Ecológica, el absoluto de la Flor de Azahar y un extracto de Almendra. La piel se limpia y se suaviza quedando delicadamente perfumada.",
    4.95,
    15,
    7
),
(
    27,
    "The Ritual Of Karma Body Cream",
    "Una crema de lujo con loto sagrado y té blanco ecológico que hidrata y suaviza la piel, además de aportarle un delicioso perfume. Gracias a su tecnología exclusiva,
    es muy fácil de aplicar y la piel lo absorbe en muy poco tiempo.",
    18.90,
    16,
    17
);

INSERT INTO `ARTICULOS`
(
    idarticulo,
    idproducto
)
VALUES
    (
        24, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Cica Peptide Anti Hair Loss"
        )
    ),
    (
        11, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Crema Limpiador Aclarante C2"
        )
    ),
    (
        9, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Crema de Noche Relajante M10"
        )
    ),
    (
        25, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Crema de Noche Relajante M10"
        )
    ),
    (
        26, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Crema de Noche Relajante M10"
        )
    ),
    (
        5, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Tea Tree Serum"
        )
    ),
    (
        21, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Cle de Peau Beaute"
        )
    ),
    (
        17, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Drawing Show Brush Liner"
        )
    ),
    (
        20, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Muhly Romance Better Lips Talk"
        )
    ),
    (
        18, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Lash Perm Curl Fix Mascara"
        )
    ),
    (
        3, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Calendula Herbal-Extract Toner"
        )
    ),
    (
        6, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "LANEIGE Radian C Cream"
        )
    ),
    (
        55, 
        (   SELECT idproducto
            FROM PRODUCTOS
            WHERE nomproducto = "Crema Limpiador Aclarante C2"
        )
    );


INSERT INTO `ARTICULOSPEDIDOSONLINE`
(
    idarticulo,
    idpedido
)
VALUES
(
    24, 
    1
),
(
    11,
    2
),
(
    9,
    2
),
(
    25,
    2
),
(
    26,
    2
),
(
    5, 
    3
),
(
    21,
    5
),
(
    17,
    6
),
(
    20,
    6
),
(
    18,
    6
),
(
    3,
    7
),
(
    6,
    8
),
(
    55,
    9
);

INSERT INTO `CALIFICACIONES`
(
    idarticulo,
    calificacion,
    feccalificacion
)
VALUES
(
    24,
    8,
    "2022-08-23"
),
(
    11,
    6,
    "2022-04-11"
),
(
    9,
    9,
    "2022-02-19"
),
(
    25,
    8,
    "2022-02-19"
),
(
    26,
    6,
    "2022-02-19"
),
(
    5,
    8,
    "2019-01-30"
),
(
    21,
    5,
    "2018-10-06"
),
(
    17,
    7,
    "2020-03-24"
),
(
    20,
    5,
    "2020-03-24"
),
(
    18,
    7,
    "2020-03-24"
),
(
    3,
    4,
    "2017-09-07"
),
(
    6,
    9,
    "2021-06-12"
),
(
    55,
    9,
    "2021-05-09"
);

INSERT INTO `COMENTARIOS`
(
    idarticulo,
    comentario,
    feccomentario
)
VALUES
(
    24,
    "Me encanta, llevo probándolo un mes y noto que ahora se me cae menos el pelo, lo recomiendo.",
    "2022-08-23"
),
(
    11,
    "Me gustaría haber tomado fotos del antes y el después. Limpiador ligero y refrescante. 
    Lo uso por la mañana y por la noche y he empezado a notar una mejora en mi piel en 2 semanas.",
    "2022-04-11"
),
(
    9, 
    "Me encanta, es fantastico",
    "2021-03-03"
),
(
    25, 
    "Me encanta, es fantastico",
    "2021-03-03"
),
(
    26, 
    "Me encanta, es fantastico",
    "2021-03-03"
),
(
    5,
    "Lo usamos mi novia y yo. Ella tiene la piel grasa de tendencia acneica, así que lo pillamos para ella,
    y encantada porque claro, está hecho para ese tipo de piel. Se la refrescaba mucho. Yo tengo la piel seca y sensible,
    pero con la llegada del calor empezaron a salirme más granitos hormonales y me calma la zona muchísimo. No irrita nada,
    refresca, hidrata muy ligeramente... las dos le damos un 10.",
    "2022-02-19"
),
(
    21,
    "La calidad es muy cuestionable, esperaba algo más de esta firma. No tiene fijación, el color no queda uniforme, el resultado es terrible.",
    "2018-10-06"
),
(
    17,
    "Precise and easy to apply. I have both colors but brown is perfect. The best thing is that it glides so you do not have to stretch 
    or tug on the eye lid. You will not get smears or smudges and it stays on all day.",
    "2020-03-24"
),
(
    20, 
    "Me encanta, es fantastico.",
    "2021-03-03"
),
(
    18, 
    "Nunca habia probado tan buen producto.",
    "2021-11-07"
),
(
    3,
    "No vale la pena, el producto no es tan bueno para el precio al que se vende.",
    "2017-09-07"
),
(
    6,
    "Me encanta este producto, mi piel se siente y se ve mucho mejor.",
    "2021-06-12"
),
(
    55,
    "Me encanta este producto, ahora mi piel se ve muy unificada.",
    "2021-05-09"
);

INSERT INTO `IMAGENES`
(
    idimagen,
    nomimagen,
    iorden,
    idproducto
)
VALUES
    (
        1,
        "Cosmetica/klairstonico.png",
        1,
        1
    ),
    (
        2,
        "Cosmetica/tonicoordinary.png",
        2,
        2
    ),
    (
        3,
        "Cosmetica/tonicokiehls.jpg",
        3,
        3
    ),
    (
        4,
        "Cosmetica/serumaromatica.jpg",
        4,
        4
    ),
    (
        5,
        "Cosmetica/serumbenton.jpg",
        5,
        5
    ),
    (
        6,
        "Cosmetica/cremadialaneige.jpg",
        6,
        6
    ),
    (
        7,
        "Cosmetica/cremadiayvesrocher.png",
        7,
        7
    ),
    (
        8,
        "Cosmetica/cremanocheyvesrocher.png",
        8,
        8
    ),
    (
        9,
        "Cosmetica/cremanochefacetheory.png",
        9,
        9
    ),
    (
        10,
        "Cosmetica/limpiadoryvesrocher.png",
        10,
        10
    ),
    (
        11,
        "Cosmetica/limpiadorfacetheory.png",
        11,
        11
    ),
    (
        12,
        "Cosmetica/exfolianteyvesrocher.png",
        12,
        12
    ),
    (
        13,
        "Cosmetica/basearmani.png",
        13,
        13
    ),
    (
        14,
        "Cosmetica/iluminadornyx.png",
        14,
        14
    ),
    (
        15,
        "Cosmetica/iluminadorclio.png",
        15,
        15
    ),
    (
        16,
        "Cosmetica/delineadorclio.png",
        16,
        16
    ),
    (
        17,
        "Cosmetica/delineadoretude.png",
        17,
        17
    ),
    (
        18,
        "Cosmetica/mascaraetude.png",
        18,
        18
    ),
    (
        19,
        "Cosmetica/mascarayvesrocher.png",
        19,
        19
    ),
    (
        20,
        "Cosmetica/barralabiosetude.png",
        20,
        20
    ),
    (
        21,
        "Cosmetica/barrashisheido.png",
        21,
        21
    ),
    (
        22,
        "Cosmetica/balsamoisoi.png",
        22,
        22
    ),
    (
        23,
        "Cosmetica/champuyvesrocher.png",
        23,
        23
    ),
    (
        24,
        "Cosmetica/champusomebymi.png",
        24,
        24
    ),
    (
        25,
        "Cosmetica/acondicionadorkao.png",
        25,
        25
    ),
    (
        26,
        "Cosmetica/gelduchayvesrocher.png",
        26,
        26
    ),
    (
        27,
        "Cosmetica/cremarituals.png",
        27,
        27
    );
