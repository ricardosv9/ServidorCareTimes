# ServidorCareTimes
# 🛠️ CareTimes API - Backend REST para Gestión de Citas Médicas

La gestión tradicional de citas médicas—vía teléfono o webs—genera esperas, olvidos y carga administrativa tanto para pacientes como para el personal sanitario. Al mismo tiempo, el uso masivo de dispositivos móviles demanda soluciones ágiles que permitan reservar, consultar o cancelar citas “sobre la marcha” y en tiempo real.

**CareTimes** surge para unificar toda la experiencia de gestión de citas médicas: un cliente Android intuitivo, un servicio REST en Java/Spring Boot donde se integra la lógica de la aplicación y una base de datos PostgreSQL que garantiza persistencia y control de los datos.

Con esta plataforma, los pacientes pueden registrarse, editar su perfil y gestionar sus citas de forma sencilla e intuitiva, mientras que los médicos acceden y organizan su agenda de forma centralizada.

---

## 🚀 Tecnologías utilizadas

- Java 17
- Spring Boot
- Spring Web (REST)
- Spring Data JPA
- PostgreSQL
- Maven
- Bash (para gestión automatizada con script)

## 📦 Funcionalidades principales

- Crear nuevas citas médicas
- Ver citas por paciente
- Cancelar citas
- Registro y edición de pacientes y médicos
- Gestión de base de datos (reinicio o creación automática)
- Script `.sh` para simplificar todo el flujo

---

## ⚙️ Configuración del entorno

1. Asegúrate de tener PostgreSQL instalado y un usuario con permisos.

2. Clona el repositorio y entra al directorio del backend:

`bash`
git clone <repositorio>
cd backend

## Ejecuta el script de gestión
./gestionar_app.sh -crear     # Crea las tablas si no existen
./gestionar_app.sh -reinicio  # Reinicia las tablas (drop + create)
./gestionar_app.sh -start     # Inicia la app con Spring Boot


