-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema fotos
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ fotos;
USE fotos;

--
-- Table structure for table `fotos`.`albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci,
  `fecha` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `photo_dir` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `fotos`.`albums`
--

/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;


--
-- Table structure for table `fotos`.`biografias`
--

DROP TABLE IF EXISTS `biografias`;
CREATE TABLE `biografias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_spanish2_ci,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `fotos`.`biografias`
--

/*!40000 ALTER TABLE `biografias` DISABLE KEYS */;
INSERT INTO `biografias` (`id`,`body`,`created`,`modified`) VALUES 
 (1,'\r\nPROPOSICIONES Y OPERACIONES LÓGICAS.\r\n \r\nUna proposición o enunciado es una oración que puede ser falso o verdadero pero no ambas a la vez. La proposición es un elemento fundamental de la lógica matemática.\r\nA continuación se tienen algunos ejemplos de proposiciones válidas y no válidas, y se explica el porqué algunos enunciados no son proposiciones. Las proposiciones se indican por medio de una letra minúscula, dos puntos y la proposición propiamente dicha. Ejemplo.\r\np: La tierra es plana.\r\nq: -17 + 38 = 21\r\nr: x > y-9\r\ns: El Morelia será campeón en la presente temporada de Fut-Bol.\r\nt: Hola ¿como estas?\r\nw: Lava el coche por favor.\r\n \r\nLos incisos p y q sabemos que pueden tomar un valor de falso o verdadero; por lo tanto son proposiciones validas. El inciso r también es una proposición valida, aunque el valor de falso o verdadero depende del valor asignado a las variables x y y en determinado momento. La proposición del inciso s también esta perfectamente expresada aunque para decir si es falsa o verdadera se tendría que esperar a que terminara la temporada de fut-bol. Sin embargo los enunciados t y w no son válidos, ya que no pueden tomar un valor de falso o verdadero, uno de ellos es un saludo y el otro es una orden.\r\n \r\nCLASIFICACIÓN DE LAS PROPOSICIONES\r\n \r\nAquellas proposiciones que constan o se les puede representar por una sola variable, se llaman proposiciones simples o atómicas.\r\nPor ejemplo, sea la proposición \"p: 3 + 6 = 9\" es una proposición simple o atómica.\r\nCuando una proposición consta de dos o más enunciados simples, se le llama proposición compuesta o molecular.\r\n Así, por ejemplo:\r\n \r\n \r\n \r\nEncontramos dos enunciados. El primero (p) nos afirma que Pitágoras era griego y el segundo (q) que Pitágoras era geómetra.\r\n \r\nCONECTIVOS LÓGICOS Y PROPOSICIONES COMPUESTAS:\r\n \r\nExisten conectores u operadores lógicas que permiten formar proposiciones compuestas (formadas por varias proposiciones).\r\n \r\nSímbolo	Operación asociada	Significado\r\n\r\n\r\n\r\n\r\n\r\n	Negación\r\nConjunción o producto lógico\r\nDisyunción o suma lógica\r\nImplicación\r\nDoble implicación\r\nDiferencia simétrica	no p o no es cierto que p\r\np y q\r\np o q (en sentido incluyente)\r\np implica q, o si p entonces q\r\np si y sólo si q\r\np o q (en sentido excluyente)\r\n \r\nLos operadores o conectores básicos son:\r\n \r\n \r\n \r\n \r\n1.	Operador and (y):\r\n \r\nSe utiliza para conectar dos proposiciones que se deben cumplir para que se pueda obtener un resultado verdadero. Si símbolo es: {^, un punto (.), un paréntesis}. Se le conoce como la multiplicación lógica:\r\nEjemplo.\r\nSea el siguiente enunciado \"El coche enciende cuando tiene gasolina en el tanque y tiene corriente la batería\"\r\nSean:\r\np: El coche enciende.\r\nq: Tiene gasolina el tanque.\r\nr: Tiene corriente la batería.\r\nDe tal manera que la representación del enunciado anterior usando simbología lógica es como sigue:\r\np = q ^ r\r\n \r\nSu tabla de verdad es como sigue:\r\n \r\nq	r	p = q ^ r\r\n1	1	1\r\n1	0	0\r\n0	1	0\r\n0	0	0\r\nDonde.\r\n1 = verdadero\r\n0 = falso\r\n \r\nEn la tabla anterior el valor de q=1 significa que el tanque tiene gasolina, r=1 significa que la batería tiene corriente y p = q ^ r=1 significa que el coche puede encender. Se puede notar que si q o r valen cero implica que el auto no tiene gasolina y que por lo tanto no puede encender.\r\n \r\nq	r	p = q ^ r\r\n1	1	1\r\n1	0	0\r\n0	1	0\r\n0	0	0\r\n \r\n \r\n2.	Operador Or (o):\r\nCon este operador se obtiene un resultado verdadero cuando alguna de las proposiciones es verdadera. Se indica por medio de los siguientes símbolos:\r\n{^ ,+,^}. Se conoce como las sumas lógicas. Ejemplo.\r\nSea el siguiente enunciado \"Una persona puede entrar al cine si compra su boleto u obtiene un pase\". Donde.\r\np: Entra al cine.\r\nq: Compra su boleto.\r\nr: Obtiene un pase.\r\nq	r	p =q^ r\r\n1	1	1\r\n1	0	1\r\n0	1	1\r\n0	0	0\r\n \r\n3.	Operador Not (no):\r\nSu función es negar la proposición. Esto significa que sí alguna proposición es verdadera y se le aplica el operador not se obtendrá su complemento o negación (falso). Este operador se indica por medio de los siguientes símbolos: {‘, ^, }. Ejemplo.\r\np	p’\r\n1	0\r\n0	1\r\nAdemás de los operadores básicos (and, or y not) existe el operador xor.\r\n \r\n4.	Operador xor:\r\nCuyo funcionamiento es semejante al operador or con la diferencia en que su resultado es verdadero solamente si una de las proposiciones es cierta, cuando ambas con verdad el resultado es falso.\r\nEn este momento ya se pueden representar con notación lógica enunciados más complejos. Ejemplo\r\nSean las proposiciones:\r\np: Hoy es domingo.\r\nq: Tengo que estudiar teorías del aprendizaje.\r\nr: Aprobaré el curso.\r\n \r\nEl enunciado: \"Hoy es domingo y tengo que estudiar teorías de aprendizaje o no aprobaré el curso\". Se puede representar simbólicamente de la siguiente manera:\r\np ^ q ^ r\r\nPor otro lado con ayuda de estos operadores básicos se pueden formar los operadores compuestos Nand (combinación de los operadores Not y And), Nor (combina operadores Not y Or) y Xnor (resultado de Xor y Not).\r\n \r\n \r\n \r\n \r\nNEGACIÓN\r\n \r\nDada una proposición p, se denomina la negación de p a otra proposición denotada por ~ p (se lee \"no p\") que le asigna el valor veritativo opuesto al de p. Por ejemplo:\r\np: Diego estudia matemática  \r\n~ p: Diego no estudia matemática\r\nPor lo que nos resulta sencillo construir su tabla de verdad:\r\np	~ p\r\nV\r\nF	F\r\nV\r\n \r\nObservamos aquí que al valor V de p, la negación le hace corresponder el valor F, y viceversa.\r\n \r\nSe trata de una operación unitaria, pues a partir de una proposición se obtiene otra, que es su negación.\r\nEjemplo: La negación de \" p: todos los alumnos estudian matemática\" es                 \r\n~ p: no todos los alumnos estudian matemática o bien:          \r\n~ p: no es cierto que todos los alumnos estudian matemática\r\n~ p: hay alumnos que no estudian matemática\r\n \r\nCONJUNCIÓN\r\n \r\nDadas dos proposiciones p y q, se denomina conjunción de estas proposiciones a la proposición p  q (se lee \"p y q\"), cuya tabla de verdad es:\r\n \r\np	q	p  q\r\nV\r\nV\r\nF\r\nF	V\r\nF\r\nV\r\nF	V\r\nF\r\nF\r\nF\r\n \r\nLa tabla que define esta operación, establece que la conjunción es verdadera sólo si lo son las dos proposiciones componentes. En todo otro caso, es falsa.\r\n \r\nEjemplo: Sea la declaración: i)   \r\nVemos que está compuesta de dos proposiciones a las que llamaremos p y q, que son\r\np: 5 es un número impar\r\nq: 6 es un número par\r\n \r\nPor ser ambas verdaderas, la conjunción de ellas (que no es sino la declaración i) es verdadera.\r\nAhora bien, sea la declaración\r\nii) Hoy es el día 3 de noviembre y mañana es el día de 5 de noviembre\r\n \r\nEsta conjunción es falsa, ya que no pueden ser simultáneamente verdaderas ambas proposiciones.\r\n \r\nDISYUNCIÓN\r\n \r\nDadas dos proposiciones p y q, la disyunción de las proposiciones p y q es la proposición p  q cuya tabla de valor de verdad es:\r\np	q	p  q\r\nV\r\nV\r\nF\r\nF	V\r\nF\r\nV\r\nF	V\r\nV\r\nV\r\nF\r\n \r\nLa disyunción o es utilizada en sentido excluyente, ya que la verdad de la disyunción se da en el caso de que al menos una de las proposiciones sea verdadera. En el lenguaje ordinario la palabra o es utilizada en sentido incluyente o excluyente indistintamente. Para agotar toda posibilidad de ambigüedades, en matemática se utiliza la disyunción definida por la tabla precedente, que nos muestra que la disyunción sólo es falsa cuando ambas proposiciones son falsas.\r\nEjemplo: Sea  i)  Tiro las cosas viejas o que no me sirven\r\nEl sentido de la disyunción compuesta por p y q (p: tiro las cosas viejas, q: tiro las cosas que no me sirven) es incluyente, pues si tiro algo viejo, y que además no me sirve, la disyunción es V.\r\n \r\nIMPLICACIÓN O CONDICIONAL\r\n \r\nImplicación de las proposiciones p y q es la proposición p  q (si p entonces q) cuya tabla de valores de verdad es:\r\n \r\np	q	p  q\r\nV\r\nV\r\nF\r\nF	V\r\nF\r\nV\r\nF	V\r\nF\r\nV\r\nV\r\n \r\nLa proposición p se llama antecedente, y la proposición q se llama consecuente de la implicación o condicional. La tabla nos muestra que la implicación sólo es falsa si el antecedente es verdadero y el consecuente es falso.\r\n \r\n \r\nEjemplo: Supongamos la implicación   \r\nLa implicación está compuesta de las proposiciones\r\np: apruebo\r\nq: te presto el libro.\r\n \r\nNos interesa conocer la verdad o falsedad de la implicación i), en relación a la verdad o falsedad de las proposiciones p y q. El enunciado puede pensarse como un compromiso, condicionado por p, y podemos asociar su verdad al cumplimiento del compromiso. Es evidente que si p es F, es decir si no apruebo el examen, quedo liberado del compromiso y preste o no el apunte la implicación es verdadera.\r\nSi p es verdadera, es decir si apruebo el examen, y no presto el libro, el compromiso no se cumple y la proposición i) es falsa. Si p y q son verdaderas, entonces la proposición i) es verdadera pues el compromiso se cumple.\r\nEjemplo: 1 = –1  1² = (–1)² (F)\r\nLa proposición resulta ser falsa por ser el antecedente (1 = –1) falso.\r\n \r\nPROPOSICIONES CONDICIONALES.\r\n \r\nUna proposición condicional, es aquella que está formada por dos proposiciones simples (o compuesta) p y q. La cual se indica de la siguiente manera:\r\np q Se lee \"Si p entonces q\"\r\nEjemplo.\r\nEl candidato del PRI dice \"Si salgo electo presidente de la República recibirán un 50% de aumento en su sueldo el próximo año\". Una declaración como esta se conoce como condicional. Su tabla de verdad es la siguiente:\r\nSean\r\np: Salió electo Presidente de la República.\r\nq: Recibirán un 50% de aumento en su sueldo el próximo año.\r\nDe tal manera que el enunciado se puede expresar de las siguiente manera.\r\np  q\r\nSu tabla de verdad queda de la siguiente manera:\r\n \r\np	q	p q\r\n1	1	1\r\n1	0	0\r\n0	1	1\r\n0	0	1\r\n \r\nLa interpretación de los resultados de la tabla es la siguiente:\r\nConsidere que se desea analizar si el candidato presidencial mintió con la afirmación del enunciado anterior.\r\n Cuando p=1; significa que salió electo, q=1 y recibieron un aumento de 50% en su sueldo, por lo tanto p  q =1; significa que el candidato dijo la verdad en su campaña.\r\nCuando p=1 y q=0 significa que p q =0; el candidato mintió, ya que salió electo y no se incrementaron los salarios.\r\n Cuando p=0 y q=1 significa que aunque no salió electo hubo un aumento del 50% en su salario, que posiblemente fue ajeno al candidato presidencial y por lo tanto; tampoco mintió de tal forma que p q =1.\r\n \r\nPROPOSICIÓN BICONDICIONAL.\r\n \r\nSean p y q dos proposiciones entonces se puede indicar la proposición bicondicinal de la siguiente manera:\r\np q Se lee \"p si solo si q\"\r\n \r\nEsto significa que p es verdadera si y solo si q es también verdadera. O bien p es falsa si y solo si q también lo es.\r\n \r\nEjemplo: el enunciado siguiente es una proposición bicondicional\r\n\"Es buen estudiante, si y solo si; tiene promedio de diez\"\r\nDonde:\r\np: Es buen estudiante.\r\nq: Tiene promedio de diez.\r\nPor lo tanto su tabla de verdad es.\r\n \r\np	q	p q\r\n1	1	1\r\n1	0	0\r\n0	1	0\r\n0	0	1\r\n \r\nA partir de este momento, ya se está en condiciones de representar cualquier enunciado con conectores lógicos.\r\nEjemplo.\r\nSea el siguiente enunciado \"Si no pago la luz, entonces me cortarán la corriente eléctrica. Y Si pago la luz, entonces me quedaré sin dinero o pediré prestado. Y Si me quedo sin dinero y pido prestado, entonces no podré pagar la deuda, si solo si soy desorganizado\"\r\nDonde:\r\np: Pago la luz.\r\nq: Me cortarán la corriente eléctrica.\r\nr: Me quedaré sin dinero.\r\ns: Pediré prestado.\r\nt: Pagar la deuda.\r\nw: soy desorganizado.\r\n(p’  q)   p  (r  s)    (r  s)  t’   w\r\n \r\nTABLAS DE VERDAD.\r\n \r\nUna tabla de verdad de una  proposición da los valores de verdad de la Proposición  para todas las asignaciones posibles de las proposiciones atómicas\r\n A continuación se presenta un ejemplo para la proposición\r\n \r\n [(p  q)  (q’  r)   (r  q).\r\np	q	r	q’	 pq	(q’ r)	(p q) (q’ r)	r q	[(p q) (q’ r)   (r q)\r\n0	0	0	1	1	0	1	1	1\r\n0	0	1	1	1	1	1	0	0\r\n0	1	0	0	1	0	1	1	1\r\n0	1	1	0	1	0	1	1	1\r\n1	0	0	1	0	0	0	1	0\r\n1	0	1	1	0	1	1	0	0\r\n1	1	0	0	1	0	1	1	1\r\n1	1	1	0	1	0	1	1	1\r\n \r\nEl número de líneas de la tabla de verdad depende del número de variables de la expresión y se puede calcular por medio de la siguiente formula.\r\nNo de líneas = 2n Donde n = número de variables distintas.\r\nEs importante destacar a medida que se avanza en el contenido del material el alumno deberá participar activamente. Estos significa que cuando se esta definiendo proposiciones y características propias de ellas, además de los ejemplos que el maestro explique, el alumno deberá citar proposiciones diferentes, deberá entender el porque un enunciado no es válido. Cuando se ven conectores lógicos, los alumnos deberán saber emplearlos en la representación de proposiciones más complejas. Pero algo muy importante, es que los ejemplo que el maestro y los alumnos encuentren en la clase, deben ser de interés para el estudiante. Cuando se ven tablas de verdad el alumno deberá saber perfectamente bien el porque de cada uno de los resultados. En pocas palabras el conocimiento deberá ser significativo.\r\n \r\nTAUTOLOGÍA\r\n \r\nTautología, es aquella proposición (compuesta) que es cierta para todos los valores de verdad de sus variables.\r\nUn ejemplo típico es la contrapositiva cuya tabla de verdad se indica a continuación.\r\n \r\np	q	p’	q’	p q	q’ p’	(p q) (q’ p’)\r\n0	0	1	1	1	1	1\r\n0	1	1	0	1	1	1\r\n1	0	0	1	0	0	1\r\n1	1	0	0	1	1	1\r\n \r\n \r\nNote que en las tautologías para todos los valores de verdad el resultado de la proposición es siempre. Las tautologías son muy importantes en lógica matemática ya que se consideran leyes en las cuales nos podemos apoyar para realizar demostraciones.\r\nA continuación me permito citar una lista de las tautologías más conocidas y reglas de inferencia de mayor uso en las demostraciones formales que obviamente el autor no consideró.\r\n \r\n \r\nCONTRADICCIÓN\r\n \r\nEs aquella proposición que siempre es falsa para todos los valores de verdad, una de las mas  usadas y mas sencilla es p  p’ . Como lo muestra su correspondiente tabla de verdad.\r\n \r\np	p’	P  p’\r\n0	1	0\r\n1	0	0\r\nSi en el ejemplo anterior\r\np: La puerta es verde.\r\n \r\nLa proposición p  p’ equivale a decir que \"La puerta es verde y la puerta no es verde\". Por lo tanto se esta contradiciendo o se dice que es una falacia.\r\n \r\nUna proposición compuesta cuyos resultados en sus deferentes líneas de la tabla de verdad, dan como resultado  y  se le llama contingente.\r\n \r\nIMPORTANCIA DE ESTOS CONCEPTOS EN EL CAMPO PROFESIONAL.\r\n \r\nLa importancia de aprenda los  concepto de esta unidad, es  la forma en que se pueden formar proposiciones compuestas usando los conectores lógicos, representar enunciados por medio de simbología lógica, conocer los conceptos de tautología, equivalencia lógica, regla de inferencia y el de poder plantearnos enunciados que pueden ser trazados en términos de teoremas. Un teorema por lo general es resultado de un planteamiento de un problema.\r\n Lo mismo ocurre con todo tipo de problemas que se nos presentan en la vida y   en el trabajo antes de llegar a la solución debemos alcanzar ciertas metas (p1,p2,....pn), hasta llegar al objetivo o conclusión (q). Pero una vez que logramos el objetivo debemos plantearnos nuevos objetivos que nos permitirán superarnos.\r\nConsidero que es una de las mejores manera de poder demostrar la importancia de manejar estos conceptos para se aplicados en el campo laborar y hasta en lo personal.\r\n \r\nAPLICACIÓN DE LAS FUNCIONES LINEALES\r\n \r\nUna transformación lineal es un conjunto de operaciones que se realizan sobre un elemento de un sub espacio, para transformarlo en un elemento de otro sub-espacio.\r\n \r\nEn ocasiones trabajar con vectores es muy sencillo ya que pueden ser fácilmente interpretados dentro de un contexto gráfico, lamentablemente no siempre ocurre y es necesario transformar a los vectores para poderlos trabajar más fácilmente. Por otra parte, trabajar con sistemas lineales es mucho más sencillo que con sistemas no lineales, ya que se puede utilizar una técnica llamada superposición, la cual simplifica de gran manera gran variedad de cálculos, por lo que es de gran interés demostrar que un proceso puede ser reducido a un sistema lineal, lo cual solo puede lograrse demostrando que estas operaciones forman una transformación lineal.\r\n \r\n \r\n \r\nSe denomina transformación lineal, función lineal o aplicación lineal a toda aplicación cuyo dominio y condominio sean espacios vectoriales que cumpla la siguiente definición:\r\nSean V y W espacios vectoriales sobre el mismo cuerpo o campo K, y T una función de V en W. T es una transformación lineal si para todo par de vectores u y v pertenecientes a V y para todo escalar k perteneciente a K, se satisface que:\r\n \r\n1.	 \r\n2.	 donde k es un escalar.\r\n \r\nLa particularidad de una transformación lineal es que preserva las operaciones de suma de vectores y producto de un escalar por un vector.\r\nSon aplicaciones lineales los operadores usados en la formulación matemática de la mecánica cuántica.\r\n \r\nDEFINICIÓN  CUADRÁTICA\r\n           \r\nUna función cuadrática es aquella que puede escribirse de la forma:\r\n \r\nf(x) = ax2 + b x + c\r\n \r\nDonde a, b y c son números reales cualesquiera y a distinto de cero.\r\nSi representamos \"todos\" los puntos (x,f(x)) de una función cuadrática, obtenemos siempre una curva llamada parábola.\r\nComo ejemplo, ahí tienes la representación gráfica de dos funciones cuadráticas muy sencillas:\r\n•	f(x) = x2\r\n•	f(x) = -x2\r\n \r\nMÁXIMOS Y MÍNIMOS DE UNA FUNCIÓN\r\n \r\nLa función f(x) presenta un máximo relativo en xo, cuando existe un entorno E (xo) tal que:\r\n \r\n \r\nLa función f(x) presenta un mínimo relativo en xo, cuando existe un entorno E (xo) tal que:\r\n \r\n \r\n \r\nSon puntos que se distinguen por ser aquellos cuya imagen es la mayor o la menor (máximo - mínimo) de todas las imágenes “de los alrededores”. No se excluye que haya otros puntos \"alejados\" de xo cuya imagen sea mayor o menor que f( xo ).\r\nA los máximos y mínimos relativos se los llama extremos relativos o simplemente extremos.\r\n \r\nIMPORTANCIA DE LAS FUNCIONES LINEALES\r\n \r\n            Muchos problemas relacionados con la administración, la economía y las ciencias afines, además de la vida real, requieren la utilización de funciones lineales y otros tipos de funciones para su modelamiento, su comprensión y  fundamentalmente para la toma de decisiones.\r\n                        En muchas ocasiones, la sola comparación entre las funciones tipo y el comportamiento de las variables en un problema administrativo, económico o similar permite obtener los modelos mas apropiados.\r\n            El crecimiento poblacional, la propagación de una epidemia y las áreas afectadas por un derrame petrolero contaminante en el mar. Se puede determinar su crecimiento o afectación en el ambiente de las mismas por medio de aplicación de funciones a los datos obtenidos de una serie de estudios y cálculos aplicados.\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n\r\n\r\n \r\nCONCLUSIONES\r\n \r\n \r\nEn general la lógica  matemático se aplica en la tarea diaria, ya que cualquier trabajo que se realiza tiene un procedimiento lógico, por el ejemplo; para ir de compras al supermercado una ama de casa tiene que realizar cierto procedimiento lógico que permita realizar dicha tarea. Si una persona desea pintar una pared, este trabajo tiene un procedimiento lógico, ya que no puede pintar si antes no prepara la pintura, o no debe pintar la parte baja.\r\nPor otra parte las funciones son aplicables en todos los campos para obtener por medio de una serie de datos y cálculos unos resultados  que  nos permiten poder  determinar una serie de eventos como se producen o come se pueden evitar.\r\n\r\n','2017-10-29 02:23:19','2017-10-29 02:41:46');
/*!40000 ALTER TABLE `biografias` ENABLE KEYS */;


--
-- Table structure for table `fotos`.`categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `fotos`.`categorias`
--

/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`,`nombre`,`created`,`modified`) VALUES 
 (1,'B&N','2017-09-20 00:18:47','2017-09-20 00:18:47'),
 (2,'Color','2017-09-20 00:18:56','2017-09-20 00:18:56');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;


--
-- Table structure for table `fotos`.`fotos`
--

DROP TABLE IF EXISTS `fotos`;
CREATE TABLE `fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `photo_dir` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `fotos`.`fotos`
--

/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` (`id`,`categoria_id`,`photo`,`photo_dir`,`created`,`modified`) VALUES 
 (13,1,'las-modelos-mas-ricos-del-mundo-adriana-lima.jpg','064484a0-6d04-40d5-a449-29c94676a1fb','2017-10-10 20:10:29','2017-10-10 20:10:29'),
 (14,1,'wallpapers-top-modelos-1900x120059.jpg','23bf96ae-c5bf-4fbf-87ba-74e05c064dc0','2017-10-10 20:10:39','2017-10-10 20:10:39'),
 (15,1,'00100_0001006469_2_play-off.jpg','d218358f-0ba4-4b5d-9829-14b876a28460','2017-10-10 20:11:53','2017-10-10 20:11:53'),
 (16,1,'fifa-14-goodison-park-everton.jpg','32231d31-b5b3-41b9-a6f3-25e14946176d','2017-10-10 20:12:02','2017-10-10 20:12:02'),
 (17,1,'imgpsh_fullsize.png','94fd241c-16ab-4bae-81ea-a4c956936cdc','2017-10-10 20:12:12','2017-10-10 20:12:12'),
 (18,2,'00100_0001006469_2_play-off.jpg','cc640666-33ef-4efc-876d-f8c739694bab','2017-10-10 20:12:23','2017-10-10 20:12:23'),
 (19,2,'fifa-14-goodison-park-everton.jpg','14ea58e8-077c-4b77-b49c-f51f27eeefa3','2017-10-10 20:12:32','2017-10-10 20:12:32'),
 (20,2,'imgpsh_fullsize.png','a30d4652-2ed6-46db-97df-cc525872b20b','2017-10-10 20:12:41','2017-10-10 20:12:41'),
 (21,2,'las-modelos-mas-ricos-del-mundo-adriana-lima.jpg','ecaae752-cd05-4643-9d6b-5168c84dc8f4','2017-10-10 20:12:50','2017-10-10 20:12:50');
INSERT INTO `fotos` (`id`,`categoria_id`,`photo`,`photo_dir`,`created`,`modified`) VALUES 
 (22,2,'wallpapers-top-modelos-1900x120059.jpg','d3fefa9f-4bbe-4b96-8e6e-1a0d8d3f89fe','2017-10-10 20:12:58','2017-10-10 20:12:58');
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;


--
-- Table structure for table `fotos`.`users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `fotos`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`username`,`password`,`active`,`created`,`modified`) VALUES 
 (1,'admin','$2y$10$oMJIwehHLB9aATyeMJlj6unXMztGK1lDA5oL8J9S9QWn6UXz7Odlq',1,'2017-10-10 20:23:50','2017-10-10 20:36:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
