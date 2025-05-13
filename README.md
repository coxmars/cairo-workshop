# 🏛️ Cairo Workshop

![image](https://github.com/user-attachments/assets/d25809fd-f706-40f5-a4b2-bc2e912bae1a)


## 🚀 Introducción

Bienvenido a **Cairo Workshop**, un taller práctico diseñado para ayudarte a aprender Cairo, el lenguaje de programación para desarrollar contratos inteligentes en Starknet. Este repositorio contiene una serie de problemas y soluciones que te guiarán a través de los conceptos fundamentales de Cairo.

## 📋 Contenido

Este taller cubre los siguientes conceptos:

- ✨ **Problema 1**: Inmutabilidad y Variables
- 🔄 **Problema 2**: Tipos de datos felt252
- ⚙️ **Problema 3**: Control de Flujo (match e if/else)
- 📊 **Problema 4**: Arrays y Bucles
- 🗃️ **Problema 5**: Diccionarios

Cada problema está diseñado para enseñar un concepto específico de Cairo de forma práctica y progresiva.

## 🛠️ Requisitos previos

Para comenzar con este taller, necesitarás:

1. **Scarb** - El gestor de paquetes y sistema de construcción para Cairo -> https://docs.swmansion.com/scarb/download

## 📁 Estructura del repositorio
```
cairo-workshop/
├── cairo_problems/         # Problemas para resolver
│   ├── Scarb.toml
│   └── src/
│       ├── lib.cairo
│       └── problems/
│           ├── problem01.cairo
│           ├── problem02.cairo
│           └── ...
│
└── cairo_solutions/        # Soluciones implementadas
    ├── Scarb.toml
    └── src/
        ├── lib.cairo
        └── problems/
            ├── problem01.cairo
            ├── problem02.cairo
            └── ...
 ```
## 🚦 Como empezar?

1. **Clona este repositorio**
  ```
  git clone https://github.com/tu-usuario/cairo-workshop.git
  cd cairo-workshop
  ```
2. **Explora los problemas**
  ```
  cd cairo_problems
  ```
3. **Intenta resolver los problemas**

   - Abre los archivos en src/problems/ y completa las funciones marcadas con TODO
   - Ejecuta las pruebas para verificar tus soluciones:

  ```
  scarb test
  ```
4. **Consulta las soluciones**

   - Si te atascas, consulta las implementaciones en ```cairo_solutions/src/problems/```


## 🌟 Contribuciones
¡Las contribuciones son bienvenidas! Si deseas mejorar este taller o agregar nuevos problemas:

- Haz un fork del repositorio
- Crea una rama para tu característica (git checkout -b feature/nueva-caracteristica)
- Haz commit de tus cambios (git commit -m 'Agrega una nueva característica')
- Haz push a la rama (git push origin feature/nueva-caracteristica)
- Abre un Pull Request
