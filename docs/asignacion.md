---
tags:
  - mod-asignacion
  - rol-superadmin
  - rol-admin-incor
  - gestion-cupos
---

# Asignación de Cupos

El módulo de **Asignación de Cupos** es el núcleo logístico del SIGRE. Una vez que una solicitud es registrada utilizando el módulo de [Registro de Solicitudes](2-registro.md), la OAIYDE procede a resolver la solicitud, aplicando los criterios de prelación establecida en la normativa institucional, para asignar o no el cupo solicitado. El resultado de este proceso permite construir los roles de rotación y comunicar a las instancias respectivas los residentes que se formarán temporalmente en el INCOR.

---

## ⚙️ 1. Proceso de Asignación

Toda asignación de cupos debe realizarse a través de este módulo y debe seguir los siguientes pasos:

1. Ingresar al subsistema de [Gestión Institucional](acceso.md) del SIGRE.
2. Ingresar al módulo Asignación de Cupos.
3. Visualizar solicitudes pendientes.
4. Asignar las solicitudes pendientes.

En esta guía desarrollaremos paso por paso.

### 💒 a. Ingreso a Gestión Institucional

El acceso al subsistema de Gestión Institucional del SIGRE esta descrito en [Acceso y Seguridad](acceso.md). Consúltelo.

> [!warning] Importante
> Si no está registrado como usuario institucional y tener la calificación de usuario con los privilegios correspondientes, no podrá acceder al subsistema de Gestión Institucional.


### 👨🏽‍⚕️ b. Módulo de Asignación de cupos

Sea mediante la tarjeta *"Asignación de cupos"* (Figura 1) o activando en el menú **Gestión Institucional > Asignación Cupos** (Figura 2), se ingresa a la del módulo. 


<div style="text-align: center;">
  <img src="docs/images/Asignacion_cupos.webp" alt="Bandeja de entrada">
  <div style="font-size: 0.85em; color: #777; margin-top: 8px;">
    <i>Figura 1: Vista de la bandeja principal del sistema.</i>
  </div>
</div>



<div style="text-align: center;">
  <img src="docs/images/Asignacion_cupos_menu.webp" alt="Bandeja de entrada">
  <div style="font-size: 0.85em; color: #777; margin-top: 8px;">
    <i>Figura 2: Acceso al módulo de Registro de solicitudes a través del menú.</i>
  </div>
</div>


### 📜 c. Visualizar solicitudes pendientes

Luego de ingresar al módulo **Asignación de Cupos**, aparecerá un recuadro con una lista desplegable, donde deberá seleccionar una DIDAE (Figura 3).


<div style="text-align: center;">
  <img src="docs/images/Selecciona_didae.webp" alt="Bandeja de entrada">
  <div style="font-size: 0.85em; color: #777; margin-top: 8px;">
    <i>Figura 3: Selección de la DIDAE para resolver las solicitudes pendientes.</i>
  </div>
</div>


Aparecerá un cuadro con el conteo de plazas por cada servicio para los 12 meses siguientes. El conteo de plazas mostrará hasta tres valores:

- Número de plazas otorgadas con texto de color verde.
- Número de plazas otorgadas en exceso con texto de color rojo.
- Número de solicitudes pendientes en un recuadro naranja con texto en negro.

El detalle lo podemos ver en la Figura 4.


<div style="text-align: center;">
  <img src="docs/images/Cuadro_cupos_pendientes.webp" alt="Bandeja de entrada">
  <div style="font-size: 0.85em; color: #777; margin-top: 8px;">
    <i>Figura 4: Cuadro de disponibilidad y solicitudes pendientes.</i>
  </div>
</div>


Proceder a resolver las solicitudes pendientes siguiendo el paso siguiente.

### 🔃 d. Asignar las solicitudes pendientes

La asignación de las solicitudes pendientes, se inicia activando el recuadro con el número de solicitudes pendientes de cada mes, luego de lo cual aparecerá una ventana con la información de la o las solicitudes pendientes. 

La aceptación de la solicitud requiere hacer clic en el botón verde y el rechazo requiere seleccionar el motivo del rechazo y activar el botón rojo (Figura 5).

<div style="text-align: center;">
  <img src="docs/images/Figura_5.webp" alt="Bandeja de entrada">
  <div style="font-size: 0.85em; color: #777; margin-top: 8px;">
    <i>Figura 5: Secuencia para revisar las solicitudes pendientes. La parte derecha muestra la activación del recuadro amarillo y la parte izquierda la información y opciones para tomar determinar la asignación.</i>
  </div>
</div>


Culminados estos pasos, la solicitud se encuentra resuelta.


> [!important] Condiciones para asignar los cupos
> La asignación se realiza mediante la aplicación de los criterios de prelación siguientes que pueden consultarse en [Criterios de Prelación del Residentado](prelacion.md).
> 
> Cumplir con las condiciones para solicitar rotaciones, descritas en el módulo **¿Cómo solicitar?** del SIGRE, es requisito obligatorio para que la solicitud se procese.  



> [!info] Notificación de resultado de la solicitud
> Al definirse la asignación, el residente podrá visualizar inmediatamente el resultado de su solicitud en el módulo **Consulta** del SIGRE, ingresando únicamente su número de DNI.

