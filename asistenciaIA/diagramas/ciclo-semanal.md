# Diagrama: el ciclo semanal con los agentes

```mermaid
flowchart LR
    A["Descargo el ZIP<br/>de la semana"] --> B["Lo descomprimo y lo<br/>subo a mi repositorio"]
    B --> C["Trabajo con guia:<br/>/paso n"]
    C --> D["Redacto, con ayuda de<br/>documentador si quiero"]
    D --> E["/validar semana-NN"]
    E -->|"mínimo: no cumple"| C
    E -->|"mínimo: cumple"| F["/bitacora:<br/>anoto lo que ha hecho la IA"]
    F --> G["Jueves: revisión en clase"]
```

**Cómo leerlo:** cada semana empieza descargando el ZIP de ficheros base y añadiéndolo al repositorio. Se trabaja paso a paso con la guía, se valida la estructura y, si no se cumple el mínimo, se vuelve al trabajo. Cuando se cumple, se anota en la bitácora y se llega a la revisión del jueves.
