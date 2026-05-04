# JURASSIC BURGER - Sistema de Gestión de Ventas Local

## ¿Qué se ha completado?

### Arquitectura y Estructura
- **Framework**: Spring Boot 4.0.6 con Java 21
- **Base de Datos**: H2 (Portable - archivo local)
- **Interfaz**: Web con HTML5, Bootstrap 5 y JavaScript
- **Build Tool**: Gradle

###  Módulos Implementados

#### 1. **Gestión de Productos (CRUD Completo)**
   - Crear, editar, eliminar productos
   - Controlar stock disponible
   - Registrar precio de venta y costo
   - Filtros: productos activos, bajo stock, sin stock

#### 2. **Sistema de Ventas**
   - Registrar ventas con múltiples productos
   - Calcular totales automáticamente
   - Control de ganancias por venta
   - Historial de transacciones

#### 3. **Control de Inventario**
   - Log de movimientos (compra, venta, ajuste, devolución)
   - Historial por producto
   - Alertas de stock bajo
   - Trazabilidad completa

#### 4. **Reportes y Ganancias** 
   - **Reportes Diarios**: ventas, ingresos y ganancias del día
   - **Reportes Mensuales**: análisis mensual completo
   - **Dashboard**: vista rápida de KPIs principales
   - **Productos más vendidos**: top 10 productos
   - **Ganancias del dueño**: dinero disponible por período

#### 5. **Gestión de Usuarios**
   - Sistema de login
   - Roles (ADMIN, EMPLOYEE)
   - Control de acceso

### Base de Datos
- **Tablas creadas automáticamente**:
  - `products` - Catálogo de productos
  - `sales` - Historial de ventas
  - `sale_items` - Detalle de cada venta
  - `users` - Usuarios del sistema
  - `inventory_logs` - Movimientos de inventario

### API REST Completa
```
GET/POST   /api/products              - Gestión de productos
GET/POST   /api/sales                 - Gestión de ventas
GET/POST   /api/users                 - Gestión de usuarios
GET        /api/reports/dashboard     - Dashboard principal
GET        /api/reports/daily/{date}  - Reporte diario
GET        /api/reports/monthly/{y}/{m} - Reporte mensual
GET        /api/reports/earnings/today - Ganancias de hoy
```

### Interfaz Web
- Dashboard principal con estadísticas en tiempo real
- Navbar navegable
- Sidebar con menús principales
- Tarjetas estadísticas (ventas, ganancias, transacciones)
- Alertas de inventario

##  Cómo Ejecutar la Aplicación

### **Opción 1: Script Automático (Recomendado)**

#### Windows (Línea de comandos):
```bash
cd c:\Users\Santiago\Desktop\demo
run.bat
```

#### Windows (PowerShell):
```powershell
cd c:\Users\Santiago\Desktop\demo
.\run.ps1
```

### **Opción 2: Comando Manual**
```bash
cd c:\Users\Santiago\Desktop\demo
java -jar build/libs/demo-0.0.1-SNAPSHOT.jar
```

### **Opción 3: Compilar y Ejecutar**
```bash
cd c:\Users\Santiago\Desktop\demo
./gradlew.bat bootRun
```

##  Acceso a la Aplicación

Una vez que la aplicación esté corriendo:
- **URL Principal**: http://localhost:8080
- **H2 Console** (base de datos): http://localhost:8080/h2-console
  - Usuario: `admin`
  - Contraseña: `admin123`

##  Credenciales por Defecto

**Usuario Admin:**
- Usuario: `admin`
- Contraseña: `admin123`

## Base de Datos (Portabilidad)

La aplicación usa **H2 Database** que guarda los datos en un archivo local:
- **Ubicación**: `./jurassic_burger_db.mv.db`
- **Ventaja**: Totalmente portable, no necesita servidor de base de datos
- **Ubicación del archivo**: Misma carpeta del proyecto

## atos de Ejemplo

La aplicación crea automáticamente:
- **8 productos de ejemplo**: Jurassic Burger, T-Rex Burger, Combos, etc.
- **1 usuario admin**: admin/admin123

##  Estructura del Proyecto

```
src/
├── main/
│   ├── java/com/spring/demo/
│   │   ├── models/           → Entidades JPA
│   │   ├── repositories/     → Acceso a datos
│   │   ├── services/         → Lógica de negocio
│   │   ├── controllers/      → Endpoints REST
│   │   └── config/           → Configuración
│   └── resources/
│       ├── templates/        → Vistas HTML (Thymeleaf)
│       └── application.properties → Configuración
└── test/
    └── java/                 → Tests (Spring Boot)
```

## Próximas Mejoras Sugeridas

1. **Autenticación y Seguridad**
   - Implementar Spring Security
   - Hash de contraseñas con BCrypt
   - Tokens JWT

2. **Interfaz Mejorada**
   - Crear todas las vistas HTML
   - Gráficos de ventas (Chart.js)
   - Búsqueda y filtros avanzados

3. **Funcionalidades Adicionales**
   - Exportar reportes a PDF/Excel
   - Integración de métodos de pago
   - Notificaciones de bajo stock
   - Análisis de tendencias

4. **Portabilidad**
   - Crear ejecutable Windows (.exe)
   - Crear imagen Docker
   - Empaquetar como aplicación Desktop
5.  **optimizar el programa**
## Configuración Actual

### application.properties:
```properties
spring.datasource.url=jdbc:h2:./jurassic_burger_db;MODE=MySQL
spring.jpa.hibernate.ddl-auto=update
server.port=8080
```

##  Notas Importantes

1. **Base de Datos**: Se crea automáticamente en ejecución primera
2. **Puerto**: Por defecto en 8080 (modificable en application.properties)
3. **Datos Iniciales**: Se crean automáticamente en el primer inicio
4. **Desarrollo**: El `spring-boot-devtools` permite hot-reload

##  Información de Contacto

Sistema creado para: **Jurassic Burger - Negocio Local**
Desarrollador: Erick Santiago Moreno 

---

**Estado**: COMPLETADO Y FUNCIONANDO
**Última actualización**: 4 de mayo de 2026
