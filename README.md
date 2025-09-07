# App Inacap

GIT-HUB
https://github.com/GIODIROSA/app_inacap

![Logo Inacap](assets/images/logo_inacap.png)

Proyecto de aplicación móvil para Inacap, desarrollado en Flutter.

## Tabla de Contenidos

- [App Inacap](#app-inacap)
  - [Tabla de Contenidos](#tabla-de-contenidos)
  - [Características](#características)
  - [Getting Started](#getting-started)
    - [Pre-requisitos](#pre-requisitos)
    - [Instalación](#instalación)
  - [Estructura de Carpetas](#estructura-de-carpetas)
  - [Contribuir](#contribuir)
  - [Licencia](#licencia)

## Características

- **Autenticación de Usuario:** Pantalla de login y registro.
- **Pantalla de Bienvenida:** Mensaje de bienvenida a los usuarios.
- **Diseño Personalizado:** Widgets y temas personalizados para una experiencia de usuario consistente.

## Getting Started

Sigue estas instrucciones para tener una copia del proyecto corriendo en tu máquina local para desarrollo y pruebas.

### Pre-requisitos

Asegúrate de tener instalado el [Flutter SDK](https://flutter.dev/docs/get-started/install).

### Instalación

1.  **Clona el repositorio:**

    ```sh
    git clone <URL_DEL_REPOSITORIO>
    cd app_inacap
    ```

2.  **Cambia a la rama `feature/develop`:**

    ```sh
    git checkout feature/develop
    ```

3.  **Instala las dependencias:**

    ```sh
    flutter pub get
    ```

4.  **Ejecuta la aplicación:**

    ```sh
    flutter run
    ```

## Estructura de Carpetas

```
app_inacap/
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   ├── login_screen.dart
│   │   └── welcome_screen.dart
│   ├── utils/
│   │   ├── colors.dart
│   │   └── validators.dart
│   └── widgets/
│       └── custom_text_field.dart
├── assets/
│   └── images/
│       ├── logo_inacap.png
│       └── ...
├── pubspec.yaml
└── README.md
```

## Contribuir

Las contribuciones son bienvenidas. Por favor, abre un issue para discutir lo que te gustaría cambiar o añade un pull request.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT - mira el archivo `LICENSE` para más detalles.