# Notacion Z

## Que es?
Es un lenguaje de especificacion que se utiliza para describir y modelar sistemas informaticos

Permite modelar con precision las propiedades de un producto software

## Cual es su Sintaxis?
Explicacion mediante un caso:

**Aplicacion de recetas**
Requerimientos:
- Añadir usuario
- CRUD de recetas por usuario
- Mostrar recetas por usuario

### Incializamos variables
$$[Usuario,Receta]$$
### Define espacio de estados 

$$
\begin{aligned}
RECETAS\enspace APP \\
usuario: \mathbb{P} \enspace USUARIO \\
recetas: \mathbb{P}\enspace RECETA \\
recetasusr: RECETA \rightarrow  USUARIO \\
recetas = dom \enspace recetasur
\end{aligned}
$$

Ejemplos
$$
\begin{aligned}
usuario = \{\{Ana\},\{Juan\},\{Maria\}\} \\
recetas = \{\{Tacos\},\{Burrito\},\{Enchilada\}\} \\
recetasusr = \{\{Tacos\} \rightarrow \{Ana\},\{Burrito\} \rightarrow \{Juan\},\{Enchilada\}\rightarrow \{Maria\}\}
\end{aligned}
$$

$$
\begin{aligned}
INICIALIZAR\enspace RECETA \\
RECETAS\enspace APP\\
usuario: \emptyset \\
recetas: \emptyset \\
recetasusr: \emptyset \\
\end{aligned}
$$
Se define que se utilizara usuario inicializado, delta indica cambio de estado.
Para añadir un usuario este no debe existir dentro del aplicativo

$$
\begin{aligned}
AÑADIR \enspace USUARIO  \\
\triangle \enspace RECETAS \enspace APP \\
usr?:USUARIO \\
usr?:\notin USUARIO \\
usuario':usuario \cup \{ usr? \} \\
\end{aligned}
$$

Para que se pueda añadir una receta el usuario debe estar registrado

![[Pasted image 20220626195658.png]]

Para actualizar una receta si el usuario existe puede modificar los datos
![[Pasted image 20220626195756.png]]
Para borrar una receta debe existir el usaurio y la receta

![[Pasted image 20220626195745.png]]

Para obtener un listado de las recetas, si usa phi para consultar informacion. Teniendo un usuario registrado obtendremos un listado de recetas
![[Pasted image 20220626195858.png]]
## Bibliografia
[Video Notacion Z](https://www.youtube.com/watch?v=VELNFO_ECTE)

[Doc Resumen](https://es.scribd.com/document/365695997/Lenguaje-Z)

[Articulo](https://es.frwiki.wiki/wiki/Notation_Z)

[Resumen de grupo](https://docs.google.com/document/d/1lLVkuCBF_QWw5o_4qf7e2tY_JiUe_VvLiJh5x71xfbc/edit)
 
