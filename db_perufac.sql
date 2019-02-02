-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2019 a las 21:14:33
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_perufac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `ip` varchar(20) NOT NULL,
  `tipo` enum('login','logout') NOT NULL,
  `dispositivo` text NOT NULL,
  `navegador` varchar(200) NOT NULL,
  `log` text NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `direccion` text,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`id`, `usuario`, `fecha`, `ip`, `tipo`, `dispositivo`, `navegador`, `log`, `latitude`, `direccion`, `longitude`) VALUES
(1, 'DEMO DEMO', '2018-10-15 09:02:09', '::1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Google Chrome', 'MIBDIRS => D:/xampp/php/extras/mibs<br>MYSQL_HOME => \\xampp\\mysql\\bin<br>OPENSSL_CONF => D:/xampp/apache/bin/openssl.cnf<br>PHP_PEAR_SYSCONF_DIR => \\xampp\\php<br>PHPRC => \\xampp\\php<br>TMP => \\xampp\\tmp<br>HTTP_HOST => localhost<br>HTTP_CONNECTION => keep-alive<br>CONTENT_LENGTH => 98<br>HTTP_ACCEPT => */*<br>HTTP_ORIGIN => http://localhost<br>HTTP_X_REQUESTED_WITH => XMLHttpRequest<br>HTTP_USER_AGENT => Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36<br>CONTENT_TYPE => application/x-www-form-urlencoded; charset=UTF-8<br>HTTP_REFERER => http://localhost/demo/<br>HTTP_ACCEPT_ENCODING => gzip, deflate, br<br>HTTP_ACCEPT_LANGUAGE => es-ES,es;q=0.9,en;q=0.8<br>HTTP_COOKIE => PHPSESSID=7rpodvanrvgod1ar9f8erk6863<br>PATH => C:\\WINDOWS\\system32;C:\\WINDOWS;C:\\WINDOWS\\System32\\Wbem;C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\;C:\\WINDOWS\\System32\\OpenSSH\\;C:\\Program Files\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files\\Microsoft SQL Server\\110\\DTS\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\ManagementStudio\\;C:\\Program Files (x86)\\Microsoft Visual Studio 10.0\\Common7\\IDE\\PrivateAssemblies\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\DTS\\Binn\\;D:\\xampp\\php;C:\\ProgramData\\ComposerSetup\\bin;C:\\Users\\Luis Claudio\\AppData\\Local\\Microsoft\\WindowsApps;C:\\Users\\Luis Claudio\\AppData\\Roaming\\Composer\\vendor\\bin<br>SystemRoot => C:\\WINDOWS<br>COMSPEC => C:\\WINDOWS\\system32\\cmd.exe<br>PATHEXT => .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC<br>WINDIR => C:\\WINDOWS<br>SERVER_SIGNATURE => <address>Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30 Server at localhost Port 80</address>\n<br>SERVER_SOFTWARE => Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30<br>SERVER_NAME => localhost<br>SERVER_ADDR => ::1<br>SERVER_PORT => 80<br>REMOTE_ADDR => ::1<br>DOCUMENT_ROOT => D:/xampp/htdocs<br>REQUEST_SCHEME => http<br>CONTEXT_PREFIX => <br>CONTEXT_DOCUMENT_ROOT => D:/xampp/htdocs<br>SERVER_ADMIN => postmaster@localhost<br>SCRIPT_FILENAME => D:/xampp/htdocs/demo/controlador/login.php<br>REMOTE_PORT => 54387<br>GATEWAY_INTERFACE => CGI/1.1<br>SERVER_PROTOCOL => HTTP/1.1<br>REQUEST_METHOD => POST<br>QUERY_STRING => <br>REQUEST_URI => /demo/controlador/login.php<br>SCRIPT_NAME => /demo/controlador/login.php<br>PHP_SELF => /demo/controlador/login.php<br>REQUEST_TIME_FLOAT => 1539612129.526<br>REQUEST_TIME => 1539612129<br>', '-11.970150400000001', NULL, '-76.9941504'),
(2, 'DEMO DEMO', '2018-10-15 09:16:04', '::1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Google Chrome', 'MIBDIRS => D:/xampp/php/extras/mibs<br>MYSQL_HOME => \\xampp\\mysql\\bin<br>OPENSSL_CONF => D:/xampp/apache/bin/openssl.cnf<br>PHP_PEAR_SYSCONF_DIR => \\xampp\\php<br>PHPRC => \\xampp\\php<br>TMP => \\xampp\\tmp<br>HTTP_HOST => localhost<br>HTTP_CONNECTION => keep-alive<br>CONTENT_LENGTH => 98<br>HTTP_ACCEPT => */*<br>HTTP_ORIGIN => http://localhost<br>HTTP_X_REQUESTED_WITH => XMLHttpRequest<br>HTTP_USER_AGENT => Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36<br>CONTENT_TYPE => application/x-www-form-urlencoded; charset=UTF-8<br>HTTP_REFERER => http://localhost/demo/<br>HTTP_ACCEPT_ENCODING => gzip, deflate, br<br>HTTP_ACCEPT_LANGUAGE => es-ES,es;q=0.9,en;q=0.8<br>HTTP_COOKIE => PHPSESSID=7rpodvanrvgod1ar9f8erk6863<br>PATH => C:\\WINDOWS\\system32;C:\\WINDOWS;C:\\WINDOWS\\System32\\Wbem;C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\;C:\\WINDOWS\\System32\\OpenSSH\\;C:\\Program Files\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files\\Microsoft SQL Server\\110\\DTS\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\ManagementStudio\\;C:\\Program Files (x86)\\Microsoft Visual Studio 10.0\\Common7\\IDE\\PrivateAssemblies\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\DTS\\Binn\\;D:\\xampp\\php;C:\\ProgramData\\ComposerSetup\\bin;C:\\Users\\Luis Claudio\\AppData\\Local\\Microsoft\\WindowsApps;C:\\Users\\Luis Claudio\\AppData\\Roaming\\Composer\\vendor\\bin<br>SystemRoot => C:\\WINDOWS<br>COMSPEC => C:\\WINDOWS\\system32\\cmd.exe<br>PATHEXT => .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC<br>WINDIR => C:\\WINDOWS<br>SERVER_SIGNATURE => <address>Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30 Server at localhost Port 80</address>\n<br>SERVER_SOFTWARE => Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30<br>SERVER_NAME => localhost<br>SERVER_ADDR => ::1<br>SERVER_PORT => 80<br>REMOTE_ADDR => ::1<br>DOCUMENT_ROOT => D:/xampp/htdocs<br>REQUEST_SCHEME => http<br>CONTEXT_PREFIX => <br>CONTEXT_DOCUMENT_ROOT => D:/xampp/htdocs<br>SERVER_ADMIN => postmaster@localhost<br>SCRIPT_FILENAME => D:/xampp/htdocs/demo/controlador/login.php<br>REMOTE_PORT => 55744<br>GATEWAY_INTERFACE => CGI/1.1<br>SERVER_PROTOCOL => HTTP/1.1<br>REQUEST_METHOD => POST<br>QUERY_STRING => <br>REQUEST_URI => /demo/controlador/login.php<br>SCRIPT_NAME => /demo/controlador/login.php<br>PHP_SELF => /demo/controlador/login.php<br>REQUEST_TIME_FLOAT => 1539612964.543<br>REQUEST_TIME => 1539612964<br>', '-11.970150400000001', NULL, '-76.9941504'),
(3, 'DEMO DEMO', '2018-10-15 09:16:20', '::1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Google Chrome', 'MIBDIRS => D:/xampp/php/extras/mibs<br>MYSQL_HOME => \\xampp\\mysql\\bin<br>OPENSSL_CONF => D:/xampp/apache/bin/openssl.cnf<br>PHP_PEAR_SYSCONF_DIR => \\xampp\\php<br>PHPRC => \\xampp\\php<br>TMP => \\xampp\\tmp<br>HTTP_HOST => localhost<br>HTTP_CONNECTION => keep-alive<br>CONTENT_LENGTH => 98<br>HTTP_ACCEPT => */*<br>HTTP_ORIGIN => http://localhost<br>HTTP_X_REQUESTED_WITH => XMLHttpRequest<br>HTTP_USER_AGENT => Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36<br>CONTENT_TYPE => application/x-www-form-urlencoded; charset=UTF-8<br>HTTP_REFERER => http://localhost/demo/<br>HTTP_ACCEPT_ENCODING => gzip, deflate, br<br>HTTP_ACCEPT_LANGUAGE => es-ES,es;q=0.9,en;q=0.8<br>HTTP_COOKIE => PHPSESSID=7rpodvanrvgod1ar9f8erk6863<br>PATH => C:\\WINDOWS\\system32;C:\\WINDOWS;C:\\WINDOWS\\System32\\Wbem;C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\;C:\\WINDOWS\\System32\\OpenSSH\\;C:\\Program Files\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files\\Microsoft SQL Server\\110\\DTS\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\ManagementStudio\\;C:\\Program Files (x86)\\Microsoft Visual Studio 10.0\\Common7\\IDE\\PrivateAssemblies\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\DTS\\Binn\\;D:\\xampp\\php;C:\\ProgramData\\ComposerSetup\\bin;C:\\Users\\Luis Claudio\\AppData\\Local\\Microsoft\\WindowsApps;C:\\Users\\Luis Claudio\\AppData\\Roaming\\Composer\\vendor\\bin<br>SystemRoot => C:\\WINDOWS<br>COMSPEC => C:\\WINDOWS\\system32\\cmd.exe<br>PATHEXT => .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC<br>WINDIR => C:\\WINDOWS<br>SERVER_SIGNATURE => <address>Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30 Server at localhost Port 80</address>\n<br>SERVER_SOFTWARE => Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30<br>SERVER_NAME => localhost<br>SERVER_ADDR => ::1<br>SERVER_PORT => 80<br>REMOTE_ADDR => ::1<br>DOCUMENT_ROOT => D:/xampp/htdocs<br>REQUEST_SCHEME => http<br>CONTEXT_PREFIX => <br>CONTEXT_DOCUMENT_ROOT => D:/xampp/htdocs<br>SERVER_ADMIN => postmaster@localhost<br>SCRIPT_FILENAME => D:/xampp/htdocs/demo/controlador/login.php<br>REMOTE_PORT => 55798<br>GATEWAY_INTERFACE => CGI/1.1<br>SERVER_PROTOCOL => HTTP/1.1<br>REQUEST_METHOD => POST<br>QUERY_STRING => <br>REQUEST_URI => /demo/controlador/login.php<br>SCRIPT_NAME => /demo/controlador/login.php<br>PHP_SELF => /demo/controlador/login.php<br>REQUEST_TIME_FLOAT => 1539612980.654<br>REQUEST_TIME => 1539612980<br>', '-11.970150400000001', NULL, '-76.9941504'),
(4, 'DEMO DEMO', '2018-10-15 09:19:03', '::1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Google Chrome', 'MIBDIRS => D:/xampp/php/extras/mibs<br>MYSQL_HOME => \\xampp\\mysql\\bin<br>OPENSSL_CONF => D:/xampp/apache/bin/openssl.cnf<br>PHP_PEAR_SYSCONF_DIR => \\xampp\\php<br>PHPRC => \\xampp\\php<br>TMP => \\xampp\\tmp<br>HTTP_HOST => localhost<br>HTTP_CONNECTION => keep-alive<br>CONTENT_LENGTH => 98<br>HTTP_ACCEPT => */*<br>HTTP_ORIGIN => http://localhost<br>HTTP_X_REQUESTED_WITH => XMLHttpRequest<br>HTTP_USER_AGENT => Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36<br>CONTENT_TYPE => application/x-www-form-urlencoded; charset=UTF-8<br>HTTP_REFERER => http://localhost/demo/<br>HTTP_ACCEPT_ENCODING => gzip, deflate, br<br>HTTP_ACCEPT_LANGUAGE => es-ES,es;q=0.9,en;q=0.8<br>HTTP_COOKIE => PHPSESSID=7rpodvanrvgod1ar9f8erk6863<br>PATH => C:\\WINDOWS\\system32;C:\\WINDOWS;C:\\WINDOWS\\System32\\Wbem;C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\;C:\\WINDOWS\\System32\\OpenSSH\\;C:\\Program Files\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files\\Microsoft SQL Server\\110\\DTS\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\ManagementStudio\\;C:\\Program Files (x86)\\Microsoft Visual Studio 10.0\\Common7\\IDE\\PrivateAssemblies\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\DTS\\Binn\\;D:\\xampp\\php;C:\\ProgramData\\ComposerSetup\\bin;C:\\Users\\Luis Claudio\\AppData\\Local\\Microsoft\\WindowsApps;C:\\Users\\Luis Claudio\\AppData\\Roaming\\Composer\\vendor\\bin<br>SystemRoot => C:\\WINDOWS<br>COMSPEC => C:\\WINDOWS\\system32\\cmd.exe<br>PATHEXT => .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC<br>WINDIR => C:\\WINDOWS<br>SERVER_SIGNATURE => <address>Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30 Server at localhost Port 80</address>\n<br>SERVER_SOFTWARE => Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30<br>SERVER_NAME => localhost<br>SERVER_ADDR => ::1<br>SERVER_PORT => 80<br>REMOTE_ADDR => ::1<br>DOCUMENT_ROOT => D:/xampp/htdocs<br>REQUEST_SCHEME => http<br>CONTEXT_PREFIX => <br>CONTEXT_DOCUMENT_ROOT => D:/xampp/htdocs<br>SERVER_ADMIN => postmaster@localhost<br>SCRIPT_FILENAME => D:/xampp/htdocs/demo/controlador/login.php<br>REMOTE_PORT => 56074<br>GATEWAY_INTERFACE => CGI/1.1<br>SERVER_PROTOCOL => HTTP/1.1<br>REQUEST_METHOD => POST<br>QUERY_STRING => <br>REQUEST_URI => /demo/controlador/login.php<br>SCRIPT_NAME => /demo/controlador/login.php<br>PHP_SELF => /demo/controlador/login.php<br>REQUEST_TIME_FLOAT => 1539613143.545<br>REQUEST_TIME => 1539613143<br>', '-11.970150400000001', NULL, '-76.9941504'),
(5, 'DEMO DEMO', '2018-11-03 15:38:19', '::1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Google Chrome', 'MIBDIRS => D:/xampp/php/extras/mibs<br>MYSQL_HOME => \\xampp\\mysql\\bin<br>OPENSSL_CONF => D:/xampp/apache/bin/openssl.cnf<br>PHP_PEAR_SYSCONF_DIR => \\xampp\\php<br>PHPRC => \\xampp\\php<br>TMP => \\xampp\\tmp<br>HTTP_HOST => localhost<br>HTTP_CONNECTION => keep-alive<br>CONTENT_LENGTH => 90<br>HTTP_ACCEPT => */*<br>HTTP_ORIGIN => http://localhost<br>HTTP_X_REQUESTED_WITH => XMLHttpRequest<br>HTTP_USER_AGENT => Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36<br>CONTENT_TYPE => application/x-www-form-urlencoded; charset=UTF-8<br>HTTP_REFERER => http://localhost/demo/<br>HTTP_ACCEPT_ENCODING => gzip, deflate, br<br>HTTP_ACCEPT_LANGUAGE => es-ES,es;q=0.9,en;q=0.8<br>HTTP_COOKIE => PHPSESSID=v8p4m3ojp3ndphutb1p3epe685<br>PATH => C:\\WINDOWS\\system32;C:\\WINDOWS;C:\\WINDOWS\\System32\\Wbem;C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\;C:\\WINDOWS\\System32\\OpenSSH\\;C:\\Program Files\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files\\Microsoft SQL Server\\110\\DTS\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\ManagementStudio\\;C:\\Program Files (x86)\\Microsoft Visual Studio 10.0\\Common7\\IDE\\PrivateAssemblies\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\DTS\\Binn\\;D:\\xampp\\php;C:\\ProgramData\\ComposerSetup\\bin;C:\\Users\\Luis Claudio\\AppData\\Local\\Microsoft\\WindowsApps;C:\\Users\\Luis Claudio\\AppData\\Roaming\\Composer\\vendor\\bin<br>SystemRoot => C:\\WINDOWS<br>COMSPEC => C:\\WINDOWS\\system32\\cmd.exe<br>PATHEXT => .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC<br>WINDIR => C:\\WINDOWS<br>SERVER_SIGNATURE => <address>Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30 Server at localhost Port 80</address>\n<br>SERVER_SOFTWARE => Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30<br>SERVER_NAME => localhost<br>SERVER_ADDR => ::1<br>SERVER_PORT => 80<br>REMOTE_ADDR => ::1<br>DOCUMENT_ROOT => D:/xampp/htdocs<br>REQUEST_SCHEME => http<br>CONTEXT_PREFIX => <br>CONTEXT_DOCUMENT_ROOT => D:/xampp/htdocs<br>SERVER_ADMIN => postmaster@localhost<br>SCRIPT_FILENAME => D:/xampp/htdocs/demo/controlador/login.php<br>REMOTE_PORT => 61149<br>GATEWAY_INTERFACE => CGI/1.1<br>SERVER_PROTOCOL => HTTP/1.1<br>REQUEST_METHOD => POST<br>QUERY_STRING => <br>REQUEST_URI => /demo/controlador/login.php<br>SCRIPT_NAME => /demo/controlador/login.php<br>PHP_SELF => /demo/controlador/login.php<br>REQUEST_TIME_FLOAT => 1541277499.911<br>REQUEST_TIME => 1541277499<br>', '-12.0102912', NULL, '-77.0097152'),
(6, 'DEMO DEMO', '2018-12-16 17:22:24', '::1', 'login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Google Chrome', 'MIBDIRS => D:/xampp/php/extras/mibs<br>MYSQL_HOME => \\xampp\\mysql\\bin<br>OPENSSL_CONF => D:/xampp/apache/bin/openssl.cnf<br>PHP_PEAR_SYSCONF_DIR => \\xampp\\php<br>PHPRC => \\xampp\\php<br>TMP => \\xampp\\tmp<br>HTTP_HOST => localhost<br>HTTP_CONNECTION => keep-alive<br>CONTENT_LENGTH => 90<br>HTTP_ACCEPT => */*<br>HTTP_ORIGIN => http://localhost<br>HTTP_X_REQUESTED_WITH => XMLHttpRequest<br>HTTP_USER_AGENT => Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36<br>CONTENT_TYPE => application/x-www-form-urlencoded; charset=UTF-8<br>HTTP_REFERER => http://localhost/demo/<br>HTTP_ACCEPT_ENCODING => gzip, deflate, br<br>HTTP_ACCEPT_LANGUAGE => es-ES,es;q=0.9,en;q=0.8<br>HTTP_COOKIE => PHPSESSID=8j6lgch9a0gjseb9ijmd1jdi26<br>PATH => C:\\Program Files (x86)\\Common Files\\Oracle\\Java\\javapath;C:\\WINDOWS\\system32;C:\\WINDOWS;C:\\WINDOWS\\System32\\Wbem;C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\;C:\\WINDOWS\\System32\\OpenSSH\\;C:\\Program Files\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\;C:\\Program Files\\Microsoft SQL Server\\110\\DTS\\Binn\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\Tools\\Binn\\ManagementStudio\\;C:\\Program Files (x86)\\Microsoft Visual Studio 10.0\\Common7\\IDE\\PrivateAssemblies\\;C:\\Program Files (x86)\\Microsoft SQL Server\\110\\DTS\\Binn\\;D:\\xampp\\php;C:\\ProgramData\\ComposerSetup\\bin;C:\\Program Files\\Java\\jre1.8.0_191\\bin;C:\\Users\\Luis Claudio\\AppData\\Local\\Microsoft\\WindowsApps;C:\\Users\\Luis Claudio\\AppData\\Roaming\\Composer\\vendor\\bin<br>SystemRoot => C:\\WINDOWS<br>COMSPEC => C:\\WINDOWS\\system32\\cmd.exe<br>PATHEXT => .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC<br>WINDIR => C:\\WINDOWS<br>SERVER_SIGNATURE => <address>Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30 Server at localhost Port 80</address>\n<br>SERVER_SOFTWARE => Apache/2.4.33 (Win32) OpenSSL/1.0.2o PHP/7.0.30<br>SERVER_NAME => localhost<br>SERVER_ADDR => ::1<br>SERVER_PORT => 80<br>REMOTE_ADDR => ::1<br>DOCUMENT_ROOT => D:/xampp/htdocs<br>REQUEST_SCHEME => http<br>CONTEXT_PREFIX => <br>CONTEXT_DOCUMENT_ROOT => D:/xampp/htdocs<br>SERVER_ADMIN => postmaster@localhost<br>SCRIPT_FILENAME => D:/xampp/htdocs/demo/controlador/login.php<br>REMOTE_PORT => 63691<br>GATEWAY_INTERFACE => CGI/1.1<br>SERVER_PROTOCOL => HTTP/1.1<br>REQUEST_METHOD => POST<br>QUERY_STRING => <br>REQUEST_URI => /demo/controlador/login.php<br>SCRIPT_NAME => /demo/controlador/login.php<br>PHP_SELF => /demo/controlador/login.php<br>REQUEST_TIME_FLOAT => 1544998944.668<br>REQUEST_TIME => 1544998944<br>', '-11.9799808', NULL, '-77.0080768');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correlativo`
--

CREATE TABLE `correlativo` (
  `id` int(11) NOT NULL,
  `serie` varchar(8) NOT NULL,
  `numero` int(11) NOT NULL,
  `tipo` enum('FACTURA','BOLETA','NOTACREDITO') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `correlativo`
--

INSERT INTO `correlativo` (`id`, `serie`, `numero`, `tipo`) VALUES
(1, 'FF60', 5, 'FACTURA'),
(2, 'BB60', 0, 'BOLETA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fac_cab`
--

CREATE TABLE `fac_cab` (
  `id` int(11) NOT NULL,
  `serie` varchar(20) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `moneda` varchar(20) NOT NULL,
  `subtotal` decimal(15,6) NOT NULL,
  `igv` decimal(15,6) NOT NULL,
  `total` decimal(15,6) NOT NULL,
  `comentario` text,
  `fecha_emision` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fac_cab`
--

INSERT INTO `fac_cab` (`id`, `serie`, `numero`, `ruc`, `razon_social`, `direccion`, `moneda`, `subtotal`, `igv`, `total`, `comentario`, `fecha_emision`) VALUES
(1, 'FF60', '00000001', '20100054184', 'CLINICA INTERNACIONAL S.A.', 'JR. WASHINGTON Nº1471 LIMA-LIMA', 'PEN', '8.000000', '1.440000', '9.440000', 'DEMO', '2019-02-02'),
(2, 'FF60', '00000002', '20100054184', 'CLINICA INTERNACIONAL S.A.', 'JR. WASHINGTON Nº1471 LIMA-LIMA', 'PEN', '44.000000', '7.920000', '51.920000', 'DEMO', '2019-02-02'),
(3, 'FF60', '00000003', '20382748566', 'INTERSEGURO COMPAÑIA DE SEGUROS S.A.', 'AV. FELIPE PARDO Y ALIAGA NRO. 634 LIMA - LIMA - SAN ISIDRO', 'PEN', '44.000000', '7.920000', '51.920000', 'DEMO', '2019-02-02'),
(4, 'FF60', '00000004', '20492633683', 'LOGISTICA INTERNACIONAL ADUANERA S.A.C.', 'Avenida Japón - Mz. C Lt. 14, Urb. Los Jazmines', 'PEN', '4.000000', '0.720000', '4.720000', 'DEMO', '2019-02-02'),
(5, 'FF60', '00000005', '20334766714', 'INVERSIONES LA RIOJA S.A.', 'PARDO Y ALIAGA Nº699 SAN ISIDRO', 'PEN', '4.000000', '0.720000', '4.720000', 'DEMO', '2019-02-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fac_det`
--

CREATE TABLE `fac_det` (
  `id` int(11) NOT NULL,
  `serie` varchar(20) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `unidad` varchar(20) NOT NULL,
  `cantidad` decimal(15,6) NOT NULL,
  `precio` decimal(15,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fac_det`
--

INSERT INTO `fac_det` (`id`, `serie`, `numero`, `codigo`, `descripcion`, `unidad`, `cantidad`, `precio`) VALUES
(1, 'FF60', '00000001', '10050', 'TORNILLO SUTURE LOOP 25MM', 'UND', '2.000000', '2.000000'),
(2, 'FF60', '00000001', '10035', 'TORNILLO DE INTERFERENCIA 10 X 30MM PEEK', 'UND', '2.000000', '2.000000'),
(4, 'FF60', '00000002', '10026', 'TORNILLO DE INTERFERENCIA 8 X 25MM PEEK', 'UND', '2.000000', '22.000000'),
(5, 'FF60', '00000003', '10050', 'TORNILLO SUTURE LOOP 25MM', 'UND', '2.000000', '22.000000'),
(6, 'FF60', '00000004', '10027', 'TORNILLO DE INTERFERENCIA 8 X 30MM PEEK', 'UND', '2.000000', '2.000000'),
(7, 'FF60', '00000005', '10052', 'TORNILLO ENDOBOTTON 10MM', 'UND', '2.000000', '2.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maeart`
--

CREATE TABLE `maeart` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `codigo2` varchar(50) DEFAULT NULL,
  `codigo3` varchar(50) DEFAULT NULL,
  `unidad` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estado` enum('ACTIVO','INACTIVO') NOT NULL DEFAULT 'ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maeart`
--

INSERT INTO `maeart` (`id`, `codigo`, `codigo2`, `codigo3`, `unidad`, `descripcion`, `estado`) VALUES
(1, '00500', NULL, NULL, 'UND', 'KIT DE REHABILITACION DE HOMBRO', 'ACTIVO'),
(2, '02400', NULL, NULL, 'UND', 'ACCESORIO POLAR PAD RECTANGULAR', 'ACTIVO'),
(3, '10002', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 7X25MM TITANIO', 'ACTIVO'),
(4, '10003', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 7X30MM TITANIO', 'ACTIVO'),
(5, '10005', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 8X20MM TITANIO', 'ACTIVO'),
(6, '10006', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 8X25MM TITANIO', 'ACTIVO'),
(7, '10007', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 8X30MM TITANIO', 'ACTIVO'),
(8, '10009', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 9X20MM TITANIO', 'ACTIVO'),
(9, '10010', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 9X25MM TITANIO', 'ACTIVO'),
(10, '10011', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 9X30MM TITANIO', 'ACTIVO'),
(11, '1002052', NULL, NULL, 'UND', 'ACCESORIO PARA MANGUERA DE CONEXION', 'ACTIVO'),
(12, '1002053', NULL, NULL, 'UND', 'CASSETE DE BOMBA PARA ARTROSCOPIA', 'ACTIVO'),
(13, '10022', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 7 X 25MM PEEK', 'ACTIVO'),
(14, '10025', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 8 X 20MM PEEK', 'ACTIVO'),
(15, '10026', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 8 X 25MM PEEK', 'ACTIVO'),
(16, '10027', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 8 X 30MM PEEK', 'ACTIVO'),
(17, '10029', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 9 X 20MM PEEK', 'ACTIVO'),
(18, '10030', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 9 X 25MM PEEK', 'ACTIVO'),
(19, '10031', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 9 X 30MM PEEK', 'ACTIVO'),
(20, '10034', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 10 X 25MM PEEK', 'ACTIVO'),
(21, '10035', NULL, NULL, 'UND', 'TORNILLO DE INTERFERENCIA 10 X 30MM PEEK', 'ACTIVO'),
(22, '10050', NULL, NULL, 'UND', 'TORNILLO SUTURE LOOP 25MM', 'ACTIVO'),
(23, '10051', NULL, NULL, 'UND', 'TORNILLO SUTURE LOOP 30MM', 'ACTIVO'),
(24, '100514', NULL, NULL, 'UND', 'CABEZA FEMORAL SIN CARTILAGO', 'ACTIVO'),
(25, '10052', NULL, NULL, 'UND', 'TORNILLO ENDOBOTTON 10MM', 'ACTIVO'),
(26, '100614', NULL, NULL, 'UND', 'FIBULA SEGMENTO', 'ACTIVO'),
(27, '100714', NULL, NULL, 'UND', 'FIBULA SEGMENTO ', 'ACTIVO'),
(28, '100914', NULL, NULL, 'UND', 'INJERTO TENDON GRACILIS', 'ACTIVO'),
(29, '1010113LP', NULL, NULL, 'UND', 'PINZA ARTROSCOPIA', 'ACTIVO'),
(30, '1010114', NULL, NULL, 'UND', 'PINZA ARTHROSCOPIA 3.6 STRAIGHT', 'ACTIVO'),
(31, '101-04525', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5X25MM DENELI K2M', 'ACTIVO'),
(32, '101-04530', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5X30MM DENELI K2M', 'ACTIVO'),
(33, '101-04535', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5X35MM DENELI K2M', 'ACTIVO'),
(34, '101-04540', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5X40MM DENELI K2M', 'ACTIVO'),
(35, '101-04545', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5X45MM DENELI K2M', 'ACTIVO'),
(36, '101-05525', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5X25MM DENELI K2M', 'ACTIVO'),
(37, '101-05530', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5X30MM DENELI K2M', 'ACTIVO'),
(38, '101-05535', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5X35MM DENELI K2M', 'ACTIVO'),
(39, '101-05540', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5X40MM DENELI K2M', 'ACTIVO'),
(40, '101-05545', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5X45MM DENELI K2M', 'ACTIVO'),
(41, '101-05550', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5X50MM DENELI K2M', 'ACTIVO'),
(42, '101-05555', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5X55MM DENELI K2M', 'ACTIVO'),
(43, '101-06525', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X25MM DENELI K2M', 'ACTIVO'),
(44, '101-06530', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X30MM DENELI K2M', 'ACTIVO'),
(45, '101-06535', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X35MM DENELI K2M', 'ACTIVO'),
(46, '101-06540', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X40MM DENELI - K2M', 'ACTIVO'),
(47, '101-06545', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X45MM DENELI K2M', 'ACTIVO'),
(48, '101-06550', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X50MM DENALI K2M', 'ACTIVO'),
(49, '101-06555', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X55MM DENALI K2M', 'ACTIVO'),
(50, '101-06560', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X60MM DENELI K2M', 'ACTIVO'),
(51, '101-06565', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X65MM DENELI K2M', 'ACTIVO'),
(52, '101-06570', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5X70MM DENELI K2M', 'ACTIVO'),
(53, '101-07525', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5X25MM DENELI K2M', 'ACTIVO'),
(54, '101-07530', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5X30MM DENELI K2M', 'ACTIVO'),
(55, '101-07535', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5X35MM DENELI K2M', 'ACTIVO'),
(56, '101-07540', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5X40MM DENELI K2M', 'ACTIVO'),
(57, '101-07545', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5X45MM DENELI K2M', 'ACTIVO'),
(58, '101-10001', NULL, NULL, 'UND', 'TORNILLO DE CIERRE DENELI -K2M', 'ACTIVO'),
(59, '10129', NULL, NULL, 'UND', 'PARANTE DE HOMBRO', 'ACTIVO'),
(60, '101414', NULL, NULL, 'UND', 'INJERTO TENDO SEMITENDINOSO', 'ACTIVO'),
(61, '101-555100', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 100MM K2M', 'ACTIVO'),
(62, '101-555120', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 120MM K2M', 'ACTIVO'),
(63, '101-555150', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 150MM K2M', 'ACTIVO'),
(64, '101-555200', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 200MM K2M', 'ACTIVO'),
(65, '101-55530', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 30MM K2M', 'ACTIVO'),
(66, '101-55540', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 40MM K2M', 'ACTIVO'),
(67, '101-55550', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 50MM K2M', 'ACTIVO'),
(68, '101-555500', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 500MM K2M', 'ACTIVO'),
(69, '101-55560', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 60MM K2M', 'ACTIVO'),
(70, '101-55570', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 70MM K2M', 'ACTIVO'),
(71, '101-55580', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 80MM K2M', 'ACTIVO'),
(72, '101-55590', NULL, NULL, 'UND', 'BARRA RECTA 5.5 X 90MM K2M', 'ACTIVO'),
(73, '101-655100', NULL, NULL, 'UND', 'BARRA CURVA 5.5 X 100MM K2M', 'ACTIVO'),
(74, '101-655125', NULL, NULL, 'UND', 'BARRA CURVA 5.5 X 125MM K2M', 'ACTIVO'),
(75, '101-655150', NULL, NULL, 'UND', 'BARRA CURVA 5.5 X 150MM K2M', 'ACTIVO'),
(76, '101-65540', NULL, NULL, 'UND', 'BARRA CURVA 5.5 X 40MM K2M', 'ACTIVO'),
(77, '101-65550', NULL, NULL, 'UND', 'BARRA CURVA 5.5 X 50MM K2M', 'ACTIVO'),
(78, '101-65555', NULL, NULL, 'UND', 'BARRA CURVA 5.5 X 55MM K2M', 'ACTIVO'),
(79, '101-65565', NULL, NULL, 'UND', 'BARRA CURVA 5.5 X 65MM K2M', 'ACTIVO'),
(80, '101-65575', NULL, NULL, 'UND', 'BARRA CURVA 5.5 X 75MM K2M', 'ACTIVO'),
(81, '101-65585', NULL, NULL, 'UND', 'BARRA CURVA 5.5 X 85MM K2M', 'ACTIVO'),
(82, '101-755100G', NULL, NULL, 'UND', 'CONECTOR LATERAL 100MM K2M', 'ACTIVO'),
(83, '101-75525G', NULL, NULL, 'UND', 'CONECTOR LATERAL 25MM K2M', 'ACTIVO'),
(84, '101-75550G', NULL, NULL, 'UND', 'CONECTOR LARERAL 50MM K2M', 'ACTIVO'),
(85, '101-80018', NULL, NULL, 'UND', 'LAMINA THORACIC S', 'ACTIVO'),
(86, '101-80019', NULL, NULL, 'UND', 'LAMINA THORACIC S ', 'ACTIVO'),
(87, '101-80020', NULL, NULL, 'UND', 'LAMINA THORACIC L', 'ACTIVO'),
(88, '101-80021', NULL, NULL, 'UND', 'LAMINA THORACIC L', 'ACTIVO'),
(89, '101-80022', NULL, NULL, 'UND', 'LAMINA THORACIC OFFSET', 'ACTIVO'),
(90, '101-80023', NULL, NULL, 'UND', 'LAMINA THORACIC DERECHA', 'ACTIVO'),
(91, '101-80024', NULL, NULL, 'UND', 'LAMINA THORACIC ANGLED', 'ACTIVO'),
(92, '101-80025', NULL, NULL, 'UND', 'LAMINA THORACIC ANGLED', 'ACTIVO'),
(93, '101-80026', NULL, NULL, 'UND', 'LAMINA THORACIC ', 'ACTIVO'),
(94, '101-80027', NULL, NULL, 'UND', 'LAMINA THORACIC S', 'ACTIVO'),
(95, '101-80028', NULL, NULL, 'UND', 'LAMINA THORACIC S', 'ACTIVO'),
(96, '101-85500D', NULL, NULL, 'UND', 'REFUERZO DE ANILLO CIRCULAR 5.5MM K2M', 'ACTIVO'),
(97, '101-85555C', NULL, NULL, 'UND', 'CONECTOR PARALELO BARRAS 5.5MM K2M', 'ACTIVO'),
(98, '101-85555D', NULL, NULL, 'UND', 'CONECTOR BARRA AXIAL 5.5MM K2M', 'ACTIVO'),
(99, '101-85555E', NULL, NULL, 'UND', 'BARRA CONECTORA 5.5MM K2M', 'ACTIVO'),
(100, '101917', NULL, NULL, 'UND', 'PIEL', 'ACTIVO'),
(101, '101-A55500', NULL, NULL, 'UND', 'BARRA RECTA ROTACION TITANIO 5.5MM X 50MM K2M', 'ACTIVO'),
(102, '102014', NULL, NULL, 'UND', 'ALONIJERTO TENDON TIBIAL ANTERIOR', 'ACTIVO'),
(103, '102112', NULL, NULL, 'UND', 'INJERTO TENDON POSTERIOR LIOFILIZADO', 'ACTIVO'),
(104, '10251', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 5.0MM', 'ACTIVO'),
(105, '102512', NULL, NULL, 'UND', 'AQUILE TENDON CON HUESO LIOFILIZADO', 'ACTIVO'),
(106, '102514', NULL, NULL, 'UND', 'INJERTO TENDON AQUILES CON HUESO', 'ACTIVO'),
(107, '10253T', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 5.5MM PEEK ', 'ACTIVO'),
(108, '10254T', NULL, NULL, 'UND', 'ANCLA DE PEEK 6.5MM', 'ACTIVO'),
(109, '10313', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 3.5MM PEEK IMPACTADAS', 'ACTIVO'),
(110, '10314', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 4.5MM PEEK IMPACTADA', 'ACTIVO'),
(111, '1032-12', NULL, NULL, 'UND', 'ALOINJERTO TRICORTICAL 1.1 - 1.4CM', 'ACTIVO'),
(112, '10323T', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 3.5MM PEEK HIBRIDA', 'ACTIVO'),
(113, '103412', NULL, NULL, 'UND', 'TRI-CORTICAL BLOCK 2.0 /2.9CM', 'ACTIVO'),
(114, '10353T', NULL, NULL, 'UND', 'ANCLA TITANIO 4.5MM', 'ACTIVO'),
(115, '10354T', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 4.5MM PEEK HIBRIDA', 'ACTIVO'),
(116, '10356T', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 5.5MM TITANIUM', 'ACTIVO'),
(117, '10425', NULL, NULL, 'UND', 'ANCLA 2.0MM SUTURE ANCHOR', 'ACTIVO'),
(118, '10429', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 2.5MM', 'ACTIVO'),
(119, '10433', NULL, NULL, 'UND', 'ANCLA 2.5MM MITI CON SUTURA 2.0MM', 'ACTIVO'),
(120, '10498', NULL, NULL, 'UND', 'KIT ACL (GUIAS Y BROCAS)', 'ACTIVO'),
(121, '10499', NULL, NULL, 'UND', 'KIT ACL (GUIAS Y BROCAS)', 'ACTIVO'),
(122, '10511T', NULL, NULL, 'UND', 'ANCLA HOMBRO PEEK 4.5MM', 'ACTIVO'),
(123, '10565', NULL, NULL, 'UND', 'ANCLA 1.8MM DE SUTURA', 'ACTIVO'),
(124, '10588', NULL, NULL, 'UND', 'ANCLA 3.2MM DE SUTURA', 'ACTIVO'),
(125, '10713', NULL, NULL, 'UND', 'TORNILLO SUTURE LOOP 12MM MNI', 'ACTIVO'),
(126, '10714', NULL, NULL, 'UND', 'TORNILLO SUTURE LOOP 15MM MINI', 'ACTIVO'),
(127, '10715', NULL, NULL, 'UND', 'TORNILLO SUTURE LOOP 20MM MINI', 'ACTIVO'),
(128, '10717', NULL, NULL, 'UND', 'TORNILLO SUTURE LOOP 30MM MINI', 'ACTIVO'),
(129, '10718', NULL, NULL, 'UND', 'TORNILLO SUTURE LOOP 35MM MINI', 'ACTIVO'),
(130, '108514', NULL, NULL, 'UND', 'INJERTO TENDON DE AQUILES SIN HUESO', 'ACTIVO'),
(131, '109612', NULL, NULL, 'UND', 'OSTEOSPONGE 12MM', 'ACTIVO'),
(132, '109614', NULL, NULL, 'UND', 'OSTEOSPONGE 14MM', 'ACTIVO'),
(133, '109631', NULL, NULL, 'UND', 'OSTEOSPONGE STRIP 20 X 14 X 5MM', 'ACTIVO'),
(134, '109632', NULL, NULL, 'UND', 'OSTEOSPONGE STRIP 20 X 14 X 7MM', 'ACTIVO'),
(135, '110012', NULL, NULL, 'UND', 'CHIP OSEO ESPONJOSO GRUESO (4MM X 10MM) 5CC', 'ACTIVO'),
(136, '1101-03510F', NULL, NULL, 'UND', 'MESA MINI 90 3.5X10', 'ACTIVO'),
(137, '1101-03512F', NULL, NULL, 'UND', 'MESA MINI 90 3.5X12', 'ACTIVO'),
(138, '1101-03514F', NULL, NULL, 'UND', 'MESA MINI 90 3.5X14', 'ACTIVO'),
(139, '1101-03516F', NULL, NULL, 'UND', 'MESA MINI 90 3.5X16', 'ACTIVO'),
(140, '1101-03518F', NULL, NULL, 'UND', 'MESA MINI 90 3.5X18', 'ACTIVO'),
(141, '1101-03520F', NULL, NULL, 'UND', 'MESA MINI 90 3.5X20', 'ACTIVO'),
(142, '1101-03522F', NULL, NULL, 'UND', 'MESA MINI 90 3.5X22', 'ACTIVO'),
(143, '1101-03524F', NULL, NULL, 'UND', 'MESA MINI 90 3.5X24', 'ACTIVO'),
(144, '1101-03526F', NULL, NULL, 'UND', 'MESA MINI 90 3.5X26', 'ACTIVO'),
(145, '1101-03526FL', NULL, NULL, 'UND', 'MESA MINI LONG 3.5X26', 'ACTIVO'),
(146, '1101-03528FL', NULL, NULL, 'UND', 'MESA MINI LONG 3.5X28', 'ACTIVO'),
(147, '1101-03530FL', NULL, NULL, 'UND', 'MESA MINI LONG 3.5X30', 'ACTIVO'),
(148, '1101-03532FL', NULL, NULL, 'UND', 'MESA MINI LONG 3.5X32', 'ACTIVO'),
(149, '1101-03534FL', NULL, NULL, 'UND', 'MESA MINI LONG 3.5X34', 'ACTIVO'),
(150, '1101-03536FL', NULL, NULL, 'UND', 'MESA MINI LONG 3.5X36', 'ACTIVO'),
(151, '1101-03538FL', NULL, NULL, 'UND', 'MESA MINI LONG 3.5X38', 'ACTIVO'),
(152, '1101-03540FL', NULL, NULL, 'UND', 'MESA MINI LONG 3.5X40', 'ACTIVO'),
(153, '1101-04010F', NULL, NULL, 'UND', 'MESA MINI 90 4X10', 'ACTIVO'),
(154, '1101-04012F', NULL, NULL, 'UND', 'MESA MINI 90 4X12', 'ACTIVO'),
(155, '1101-04014F', NULL, NULL, 'UND', 'MESA MINI 90 4X14', 'ACTIVO'),
(156, '1101-04016F', NULL, NULL, 'UND', 'MESA MINI 90 4X16', 'ACTIVO'),
(157, '1101-04018F', NULL, NULL, 'UND', 'MESA MINI 90 4X18', 'ACTIVO'),
(158, '1101-04020F', NULL, NULL, 'UND', 'MESA MINI 90 4X20', 'ACTIVO'),
(159, '1101-04022F', NULL, NULL, 'UND', 'MESA MINI 90 4X22', 'ACTIVO'),
(160, '1101-04024F', NULL, NULL, 'UND', 'MESA MINI 90 4X24', 'ACTIVO'),
(161, '1101-04026F', NULL, NULL, 'UND', 'MESA MINI 90 4X26', 'ACTIVO'),
(162, '1101-04026FL', NULL, NULL, 'UND', 'MESA MINI 4X26', 'ACTIVO'),
(163, '1101-04028F', NULL, NULL, 'UND', 'MESA MINI 90 4X28', 'ACTIVO'),
(164, '1101-04028FL', NULL, NULL, 'UND', 'MESA MININ LONG 4X28', 'ACTIVO'),
(165, '1101-04030F', NULL, NULL, 'UND', 'MESA MINI 90 4X30', 'ACTIVO'),
(166, '1101-04030FL', NULL, NULL, 'UND', 'MESA MINI LONG 4X30', 'ACTIVO'),
(167, '1101-04032F', NULL, NULL, 'UND', 'MESA MINI 90 4X32', 'ACTIVO'),
(168, '1101-04032FL', NULL, NULL, 'UND', 'MESA MINI LONG 4X32', 'ACTIVO'),
(169, '1101-04034FL', NULL, NULL, 'UND', 'MESA MINI LONG 4X34', 'ACTIVO'),
(170, '1101-04036FL', NULL, NULL, 'UND', 'MESA MINI LONG 4X36', 'ACTIVO'),
(171, '1101-04038FL', NULL, NULL, 'UND', 'MESA MINI LONG 4X38', 'ACTIVO'),
(172, '1101-04040FL', NULL, NULL, 'UND', 'MESA MINI LONG 4X40', 'ACTIVO'),
(173, '1101-04520F', NULL, NULL, 'UND', 'MESA MINI 90 4.5X20', 'ACTIVO'),
(174, '1101-04522F', NULL, NULL, 'UND', 'MESA MINI 90 4.5X22', 'ACTIVO'),
(175, '1101-04524F', NULL, NULL, 'UND', 'MESA MINI 90 4.5X24', 'ACTIVO'),
(176, '1101-04526F', NULL, NULL, 'UND', 'MESA MINI 90 4.5X26', 'ACTIVO'),
(177, '1101-04528F', NULL, NULL, 'UND', 'MESA MINI 90 4.5X28', 'ACTIVO'),
(178, '1101-04530F', NULL, NULL, 'UND', 'MESA MINI 90 4.5X30', 'ACTIVO'),
(179, '1101-04532F', NULL, NULL, 'UND', 'MESA MINI 90 4.5X32', 'ACTIVO'),
(180, '1101-04534F', NULL, NULL, 'UND', 'MESA MINI 90 4.5X34', 'ACTIVO'),
(181, '1101-04536F', NULL, NULL, 'UND', 'MESA MINI 90 4.5X36', 'ACTIVO'),
(182, '1101-10001', NULL, NULL, 'UND', 'MINI SET SCREW', 'ACTIVO'),
(183, '1101-535500-55', NULL, NULL, 'UND', 'TRANSITION ROD 3.5-5.5X500', 'ACTIVO'),
(184, '1101-53580', NULL, NULL, 'UND', 'STRAIGT ROD 3.5X80', 'ACTIVO'),
(185, '1101-70001', NULL, NULL, 'UND', 'TRANSVERSE CONECTOR', 'ACTIVO'),
(186, '1101-70002', NULL, NULL, 'UND', 'TRANSVERSE CONECTOR ', 'ACTIVO'),
(187, '1101-70003', NULL, NULL, 'UND', 'TRANSVERSE CONECTOR ', 'ACTIVO'),
(188, '1101-73038M', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL (M) AJUSTABLE ', 'ACTIVO'),
(189, '1101-73510', NULL, NULL, 'UND', 'LATERAL OFFSET CONNECTOR', 'ACTIVO'),
(190, '1101-73747M', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL (L) AJUSTABLE ', 'ACTIVO'),
(191, '1101-74658M', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL (XL) AJUSTABLE ', 'ACTIVO'),
(192, '1101-83501', NULL, NULL, 'UND', 'POSTERIOR CERVICAL HOOK', 'ACTIVO'),
(193, '1101-83535', NULL, NULL, 'UND', 'PARALLED ROS CONNECTOR', 'ACTIVO'),
(194, '1101-83535D', NULL, NULL, 'UND', 'AXIAL ROD CONNECTOR', 'ACTIVO'),
(195, '1101-83555', NULL, NULL, 'UND', 'PARALLEL ROD CONNECTOR', 'ACTIVO'),
(196, '1101-83555D', NULL, NULL, 'UND', 'AXIAL ROD CONNECTOR', 'ACTIVO'),
(197, '110212', NULL, NULL, 'UND', 'CHIP OSEO ESPONJOSO GRUESO (4MM X10MM) 15.0CC', 'ACTIVO'),
(198, '110312', NULL, NULL, 'UND', 'CHIP OSEO ESPONJOSO GRUESO (4MM X10MM) 30CC', 'ACTIVO'),
(199, '110712', NULL, NULL, 'UND', 'CHIP OSEO ESPONJOSO GRUESO (4MM X 10MM) 10CC', 'ACTIVO'),
(200, '11110101', NULL, NULL, 'UND', 'CAMPO ARTHROSCOPIA RODILLA', 'ACTIVO'),
(201, '11110102', NULL, NULL, 'UND', 'CAMPO ARTHROSCOPIA HOMBRO', 'ACTIVO'),
(202, '11110103', NULL, NULL, 'UND', 'CAMPO DE ARTROSCOPIA DE CADERA', 'ACTIVO'),
(203, '1111-535300-55', NULL, NULL, 'UND', 'TRANSITION ROD 0.35-5.5 X 300 MM', 'ACTIVO'),
(204, '1111-535500-55', NULL, NULL, 'UND', 'TRANSITION ROD 3.5-5.5X500', 'ACTIVO'),
(205, '1111-B35300', NULL, NULL, 'UND', 'STRAIGH ROD 3.5X300', 'ACTIVO'),
(206, '1111-B353300', NULL, NULL, 'UND', 'STRAIGH ROD 3.5X300', 'ACTIVO'),
(207, '1111-B35400', NULL, NULL, 'UND', 'STRAIGHT ROD 3.5X400', 'ACTIVO'),
(208, '111-535300-55', NULL, NULL, 'UND', 'TRANSITION ROD 3.5-5.5X300', 'ACTIVO'),
(209, '111-B55500', NULL, NULL, 'UND', 'BARRA RECTA ROTACION CR CO 5.5MM X 500MM K2M', 'ACTIVO'),
(210, '112212', NULL, NULL, 'UND', 'CHIP OSEO ESPONJOSO CORTICOCANCELLOUS 7.5CC', 'ACTIVO'),
(211, '112312', NULL, NULL, 'UND', 'CHIP CORTICOESPONJOSO 15 CC', 'ACTIVO'),
(212, '112412', NULL, NULL, 'UND', 'CHIP CORTICOESPONJOSO 30CC', 'ACTIVO'),
(213, '113714', NULL, NULL, 'UND', 'FEMUR SHAFT SPLIT', 'ACTIVO'),
(214, '113914', NULL, NULL, 'UND', 'FEMUR DISTAL', 'ACTIVO'),
(215, '116614', NULL, NULL, 'UND', 'ALOINJERTO HUESO TENDON HUESO', 'ACTIVO'),
(216, '118936', NULL, NULL, 'UND', 'INJERTO MESETA TIBIAL', 'ACTIVO'),
(217, '1286-12', NULL, NULL, 'UND', 'CANCELLOUS BLOCK', 'ACTIVO'),
(218, '13220412', NULL, NULL, 'UND', 'VENDA ELASTICA COHESIVA 4 LIDERBAN NEGRO', 'ACTIVO'),
(219, '1437SR-100', NULL, NULL, 'UND', 'PLUMON MARCADOR PARA CIRUGIA', 'ACTIVO'),
(220, '150112', NULL, NULL, 'UND', 'PACK INJERTO SEMITENDINOSO / GRACILIS CONT 02 UND', 'ACTIVO'),
(221, '15-1020', NULL, NULL, 'UND', 'SET DE PUNZONES MICROFRACTURAS', 'ACTIVO'),
(222, '15-1026', NULL, NULL, 'UND', 'SET DE PUNZONES MICROFRACTURAS', 'ACTIVO'),
(223, '189402', NULL, NULL, 'UND', 'GRAPA PARA HUESO', 'ACTIVO'),
(224, '20016', NULL, NULL, 'UND', 'KIT TRACTION ESTERIL', 'ACTIVO'),
(225, '20054', NULL, NULL, 'UND', 'SUTURAS PARCUS BRAID BLACK', 'ACTIVO'),
(226, '20055', NULL, NULL, 'UND', 'SUTURAS PARCUS BRAID WHITE', 'ACTIVO'),
(227, '201-14012C', NULL, NULL, 'UND', 'TORNILLO SELF TAPPING 4.0X12MM K2M', 'ACTIVO'),
(228, '201-14012D', NULL, NULL, 'UND', 'TORNILLO SELF STARTING 4.0X12MM K2M', 'ACTIVO'),
(229, '201-14014C', NULL, NULL, 'UND', 'TORNILLO SELF TAPPING 4.0X14MM K2M', 'ACTIVO'),
(230, '201-14014D', NULL, NULL, 'UND', 'TORNILLO SELF STARTING 4.0X14MM K2M', 'ACTIVO'),
(231, '201-14016C', NULL, NULL, 'UND', 'TORNILLO SELF TAPPING 4.0X16MM K2M', 'ACTIVO'),
(232, '201-14016D', NULL, NULL, 'UND', 'TORNILLO SELF STARTING 4.0X16MM K2M', 'ACTIVO'),
(233, '201-14312C', NULL, NULL, 'UND', 'TORNILLO SELF TAPPING 4.35X12MM K2M', 'ACTIVO'),
(234, '201-14314C', NULL, NULL, 'UND', 'TORNILLO SELF TAPPING 4.35X14MM K2M', 'ACTIVO'),
(235, '201-14316C', NULL, NULL, 'UND', 'TORNILLO SELF TAPPING 4.35X16MM K2M', 'ACTIVO'),
(236, '201-14512C', NULL, NULL, 'UND', 'TORNILLO SELF TAPPING 4.5X14MM K2M', 'ACTIVO'),
(237, '201-14514C', NULL, NULL, 'UND', 'TORNILLO SELF TAPPING 4.5X14MM K2M', 'ACTIVO'),
(238, '208002', NULL, NULL, 'UND', 'INJERTO TENDON TIBIAL ANTERIOR', 'ACTIVO'),
(239, '208015', NULL, NULL, 'UND', 'INJERTO SEMITENDINOSO ', 'ACTIVO'),
(240, '208036', NULL, NULL, 'UND', 'HMATRIX DERMIS MEDIUM 5CM X 4CM X 2CM', 'ACTIVO'),
(241, '208038', NULL, NULL, 'UND', 'HMATRIX DERMIS MEDIUM 10.0 X 5CM', 'ACTIVO'),
(242, '208-41F18', NULL, NULL, 'UND', 'PLACA CONSTRAINED 18MM', 'ACTIVO'),
(243, '208-41F20', NULL, NULL, 'UND', 'PLACA CONSTRAINED 20MM', 'ACTIVO'),
(244, '208-41F22', NULL, NULL, 'UND', 'PLACA CONSTRAINED 22MM', 'ACTIVO'),
(245, '208-41F24', NULL, NULL, 'UND', 'PLACA CONSTRAINED 24MM', 'ACTIVO'),
(246, '208-41F26', NULL, NULL, 'UND', 'PLACA CONSTRAINED 26MM', 'ACTIVO'),
(247, '208-41F28', NULL, NULL, 'UND', 'PLACA CONSTRAINED 28MM', 'ACTIVO'),
(248, '208-41F30', NULL, NULL, 'UND', 'PLACA CONSTRAINED 30MM', 'ACTIVO'),
(249, '208-41F32', NULL, NULL, 'UND', 'PLACA CONSTRAINED 32MM', 'ACTIVO'),
(250, '208-41F34', NULL, NULL, 'UND', 'PLACA CONSTRAINED 34MM K2M', 'ACTIVO'),
(251, '208-41F36', NULL, NULL, 'UND', 'PLACA CONSTRAINED 36MM K2M', 'ACTIVO'),
(252, '208-42F36', NULL, NULL, 'UND', 'PLACA CONSTRAINED 36MM K2M', 'ACTIVO'),
(253, '208-42F38', NULL, NULL, 'UND', 'PLACA CONSTRAINED 38MM K2M', 'ACTIVO'),
(254, '208-42F40', NULL, NULL, 'UND', 'PLACA CONSTRAINED 40MM K2M', 'ACTIVO'),
(255, '208-42F42', NULL, NULL, 'UND', 'PLACA CONSTRAINED 42MM K2M', 'ACTIVO'),
(256, '208-42F44', NULL, NULL, 'UND', 'PLACA CONSTRAINED 44MM K2M', 'ACTIVO'),
(257, '208-42F46', NULL, NULL, 'UND', 'PLACA CONSTRAINED 46MM K2M', 'ACTIVO'),
(258, '208-42F48', NULL, NULL, 'UND', 'PLACA CONSTRAINED 48MM K2M', 'ACTIVO'),
(259, '208-42F50', NULL, NULL, 'UND', 'PLACA CONSTRAINED 50MM K2M', 'ACTIVO'),
(260, '208-42F52', NULL, NULL, 'UND', 'PLACA CONSTRAINED 52MM K2M', 'ACTIVO'),
(261, '208-42F54', NULL, NULL, 'UND', 'PLACA CONSTRAINED 54MM K2M', 'ACTIVO'),
(262, '208-43F48', NULL, NULL, 'UND', 'PLACA CONSTRAINED 48MM K2M', 'ACTIVO'),
(263, '208-43F51', NULL, NULL, 'UND', 'PLACA CONSTRAINED 51MM K2M', 'ACTIVO'),
(264, '208-43F54', NULL, NULL, 'UND', 'PLACA CONSTRAINED 54MM K2M', 'ACTIVO'),
(265, '208-43F57', NULL, NULL, 'UND', 'PLACA CONSTRAINED 57MM K2M', 'ACTIVO'),
(266, '208-43F60', NULL, NULL, 'UND', 'PLACA CONSTRAINED 60MM K2M', 'ACTIVO'),
(267, '208-43F63', NULL, NULL, 'UND', 'PLACA CONSTRAINED 63MM K2M', 'ACTIVO'),
(268, '208-43F66', NULL, NULL, 'UND', 'PLACA CONSTRAINED 66MM K2M', 'ACTIVO'),
(269, '208-43F69', NULL, NULL, 'UND', 'PLACA CONSTRAINED 69MM K2M', 'ACTIVO'),
(270, '208-43F72', NULL, NULL, 'UND', 'PLACA CONSTRAINED 72MM K2M', 'ACTIVO'),
(271, '208-43F75', NULL, NULL, 'UND', 'PLACA CONSTRAINED 75MM K2M', 'ACTIVO'),
(272, '208-43F78', NULL, NULL, 'UND', 'PLACA CONSTRAINED 78MM K2M', 'ACTIVO'),
(273, '21-5430', NULL, NULL, 'UND', 'KIT DE ACL(GUIAS Y BROCAS)', 'ACTIVO'),
(274, '22-1006', NULL, NULL, 'UND', 'CANULA CAPS LOCK 8.6MM X 70MM LONG', 'ACTIVO'),
(275, '22-1010', NULL, NULL, 'UND', 'CANULA CAPS LOCK 6.0MM X 70MM LONG', 'ACTIVO'),
(276, '22-1506', NULL, NULL, 'UND', 'CANULAS TRANSLUCIDA 8.6MM X 70MM', 'ACTIVO'),
(277, '22-1510', NULL, NULL, 'UND', 'CANULAS TRANSLUCIDA 6MM X 70MM', 'ACTIVO'),
(278, '22-4035', NULL, NULL, 'UND', 'PINZA FIRST PASS', 'ACTIVO'),
(279, '22-4036', NULL, NULL, 'UND', 'CARTUCHO PARA FIRST PAST', 'ACTIVO'),
(280, '2277-45', NULL, NULL, 'UND', 'CANCELLOUS', 'ACTIVO'),
(281, '301107', NULL, NULL, 'UND', 'GRAPA DENTADA', 'ACTIVO'),
(282, '30122017', NULL, NULL, 'UND', 'PRODCUTO DE PRUEBA PERUTEC', 'ACTIVO'),
(283, '309025', NULL, NULL, 'UND', 'OSTEOSELECT 2.5CC', 'ACTIVO'),
(284, '309050', NULL, NULL, 'UND', 'OSTEOSELECT 5.0CC', 'ACTIVO'),
(285, '309100', NULL, NULL, 'UND', 'OSTEOSELECT 10.0CC', 'ACTIVO'),
(286, '3100', NULL, NULL, 'UND', 'CANULA TRANSLUCIDA CLEAR NDRY 6.5MM X 72 MM', 'ACTIVO'),
(287, '3101', NULL, NULL, 'UND', 'CANULA TRANSLUCIDA CLEAR NDRY 8.5MM X 72MM ', 'ACTIVO'),
(288, '310518', NULL, NULL, 'UND', 'PISO DE ARTROSCOPIA', 'ACTIVO'),
(289, '375535000', NULL, NULL, 'UND', 'HOJA DE SHAVER 3.5MM TOM CAT', 'ACTIVO'),
(290, '375542000', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.0MM RESECTOR', 'ACTIVO'),
(291, '375544000', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.0MM AGRESIVE PLUS', 'ACTIVO'),
(292, '375545000', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.0MM TOMCAT', 'ACTIVO'),
(293, '375627000', NULL, NULL, 'UND', 'HOJA DE SHAVER MINI 2.5MM FULL RADIUS', 'ACTIVO'),
(294, '375628000', NULL, NULL, 'UND', 'HOJA DE SHAVER MINI 2.5MM AGRESIVVE', 'ACTIVO'),
(295, '375637000', NULL, NULL, 'UND', 'HOJA DE SHAVER MINI 3.5 FULL RADIUS', 'ACTIVO'),
(296, '375638000', NULL, NULL, 'UND', 'HOJA DE SHAVER MINI AGGRESSIVE 3.5MM', 'ACTIVO'),
(297, '375-638-000', NULL, NULL, 'UND', 'HOJA DE SHAVER MINI 3.5', 'ACTIVO'),
(298, '375-647-000', NULL, NULL, 'UND', 'HOJA DE SHAVER MINI FRESA 3.0', 'ACTIVO'),
(299, '375832000', NULL, NULL, 'UND', 'HOJA DE SHAVER SUBCONDRAL DRILL 1.5MM', 'ACTIVO'),
(300, '375940012', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.0MM R. BURR', 'ACTIVO'),
(301, '375941012', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.0MM FRESA BARREL', 'ACTIVO'),
(302, '380544100', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.0MM CURVO AGRESSIVO', 'ACTIVO'),
(303, '385544000', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.0MM XL AGRESSIVE RECTA', 'ACTIVO'),
(304, '385544100', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.MM XL C. CADERA', 'ACTIVO'),
(305, '40000001481', NULL, NULL, 'UND', 'EQUIPO DE SUCCION 4.8 DRENOL', 'ACTIVO'),
(306, '40025008200', NULL, NULL, 'UND', 'GRAPA DENTADA 08MM', 'ACTIVO'),
(307, '403-21105C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X11X5MM K2M', 'ACTIVO'),
(308, '403-21106C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X11X6MM K2M', 'ACTIVO'),
(309, '403-21106L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X11X6MM 7ª K2M', 'ACTIVO'),
(310, '403-21107C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X11X7MM K2M', 'ACTIVO'),
(311, '403-21107L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X11X7MM 7ª K2M', 'ACTIVO'),
(312, '403-21108C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X11X8MM K2M', 'ACTIVO'),
(313, '403-21108L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X11X8MM 7ª K2M', 'ACTIVO'),
(314, '403-21109C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X11X9MM K2M', 'ACTIVO'),
(315, '403-21109L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X11X9MM 7ª K2M', 'ACTIVO'),
(316, '403-21110C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X11X10MM 7ª K2M', 'ACTIVO'),
(317, '403-21110L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X11X10MM 7ª K2M', 'ACTIVO'),
(318, '403-21405C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X14X5MM K2M', 'ACTIVO'),
(319, '403-21406C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X14X6MM K2M', 'ACTIVO'),
(320, '403-21406L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X14X06MM 7° K2M', 'ACTIVO'),
(321, '403-21407C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X14X7MM K2M', 'ACTIVO'),
(322, '403-21407L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X14X07MM 7° K2M', 'ACTIVO'),
(323, '403-21408C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X14X8MM K2M', 'ACTIVO'),
(324, '403-21408L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X14X08MM 7° K2M', 'ACTIVO'),
(325, '403-21409C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES CONVEX 11X14X9MM K2M', 'ACTIVO'),
(326, '403-21409L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X14X09MM 7° K2M', 'ACTIVO'),
(327, '403-21410C', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES COVEX 11X14X10MM K2M', 'ACTIVO'),
(328, '403-21410L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X14X10MM 7° K2M', 'ACTIVO'),
(329, '403-21411L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X14X11MM 7° K2M', 'ACTIVO'),
(330, '403-21412L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X14X12MM 7° K2M', 'ACTIVO'),
(331, '403-21413L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X14X13MM 7° K2M', 'ACTIVO'),
(332, '403-21414L', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES CERVICALES LORDOTIC 11X14X14MM 7° K2M', 'ACTIVO'),
(333, '503-20727B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 7MM K2M', 'ACTIVO'),
(334, '503-20827B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 8MM K2M', 'ACTIVO'),
(335, '503-20927B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 9MM K2M', 'ACTIVO'),
(336, '503-21027B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 10MM K2M', 'ACTIVO'),
(337, '503-21127B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 11MM K2M', 'ACTIVO'),
(338, '503-21227B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 12MM K2M', 'ACTIVO'),
(339, '503-21327B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 13MM K2M', 'ACTIVO'),
(340, '503-21427B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 14MM K2M', 'ACTIVO'),
(341, '503-21527B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 15MM K2M', 'ACTIVO'),
(342, '503-21727B', NULL, NULL, 'UND', 'ESPACIADORES INTERVERTEBRALES LUMBARES LORDOTIC 17MM K2M', 'ACTIVO'),
(343, '6001', NULL, NULL, 'UND', 'HOJA DE SHAVER 3.5MM FULL RADIUS D', 'ACTIVO'),
(344, '6002', NULL, NULL, 'UND', 'HOJA DE SHAVER 3.5MM FAST CUT D', 'ACTIVO'),
(345, '6004', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.5MM FAST CUT D', 'ACTIVO'),
(346, '6007', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.5MM ROUND BURR D', 'ACTIVO'),
(347, '6008', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.5MM OVAL BURR D', 'ACTIVO'),
(348, '6061', NULL, NULL, 'UND', 'HOJA DE SHAVER 3.5MM FULL RADIUS S.', 'ACTIVO'),
(349, '6062', NULL, NULL, 'UND', 'HOJA DE SHAVER 3.5MM FAST CUT S.', 'ACTIVO'),
(350, '6063', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.5MM FULL RADIUS S.', 'ACTIVO'),
(351, '6064', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.5MM FAS CUT S.', 'ACTIVO'),
(352, '6067', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.5MM ROUND BURR, S', 'ACTIVO'),
(353, '6068', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.5MM OVAL BURR,S', 'ACTIVO'),
(354, '6069', NULL, NULL, 'UND', 'HOJA DE SHAVER 5.5MM ROUND BURR, S', 'ACTIVO'),
(355, '703-20930L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 9 MM 10°', 'ACTIVO'),
(356, '703-20930L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 36X 9 MM 5°', 'ACTIVO'),
(357, '703-20936L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 9 MM 10°', 'ACTIVO'),
(358, '703-20936L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 9 MM 5°', 'ACTIVO'),
(359, '703-21130L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 11 MM 10º', 'ACTIVO'),
(360, '703-21130L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 11 MM 15º ', 'ACTIVO'),
(361, '703-21130L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 11 MM 5° ', 'ACTIVO'),
(362, '703-21136L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 11MM 10º ', 'ACTIVO'),
(363, '703-21136L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 11 MM 15º', 'ACTIVO'),
(364, '703-21136L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 11 MM 5º ', 'ACTIVO'),
(365, '703-21330L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30X 13MM 10º ', 'ACTIVO'),
(366, '703-21330L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 13 MM 15º ', 'ACTIVO'),
(367, '703-21330L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 13 MM 5º ', 'ACTIVO'),
(368, '703-21336L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 13 MM 10º ', 'ACTIVO'),
(369, '703-21336L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 13 MM 15º', 'ACTIVO'),
(370, '703-21336L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 13 MM 5°', 'ACTIVO'),
(371, '703-21530L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 15 MM 10°', 'ACTIVO'),
(372, '703-21530L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 15 MM 15º ', 'ACTIVO'),
(373, '703-21530L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 15 MM 5º', 'ACTIVO'),
(374, '703-21536L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 15 MM 10º ', 'ACTIVO'),
(375, '703-21536L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 15 MM 15º', 'ACTIVO'),
(376, '703-21536L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 15 MM 5º ', 'ACTIVO'),
(377, '703-21730L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 17 MM 10º ', 'ACTIVO'),
(378, '703-21730L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 17 MM 15º ', 'ACTIVO'),
(379, '703-21730L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 17 MM 5º', 'ACTIVO'),
(380, '703-21736L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 17MM 10º ', 'ACTIVO'),
(381, '703-21736L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 17MM 15º', 'ACTIVO'),
(382, '703-21736L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 17 MM 5º ', 'ACTIVO'),
(383, '703-21930L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 19 MM 10º', 'ACTIVO'),
(384, '703-21930L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 19 MM 15º ', 'ACTIVO'),
(385, '703-21930L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 19 MM 5º ', 'ACTIVO'),
(386, '703-21936L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 19 MM 10º ', 'ACTIVO'),
(387, '703-21936L15', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 19 MM 15º', 'ACTIVO'),
(388, '703-21936L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 19 MM 5º ', 'ACTIVO'),
(389, '703-22130L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 21 MM 10º ', 'ACTIVO'),
(390, '703-22130L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 24 X 30 X 21 MM 5º ', 'ACTIVO'),
(391, '703-22136L1', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 21 MM 10º ', 'ACTIVO'),
(392, '703-22136L5', NULL, NULL, 'UND', 'ESPACIADOR INTERVERTEBRAL ANTERIOR LUMBAR 28 X 36 X 21 MM 5º ', 'ACTIVO'),
(393, '7205343', NULL, NULL, 'UND', 'HOJA DE SHAVER RECTA PARA CADERA XL', 'ACTIVO'),
(394, '7207554', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 7X25MM S&N', 'ACTIVO'),
(395, '7207555', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 7X30MM S&N', 'ACTIVO'),
(396, '7207560', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 8X25MM S&N', 'ACTIVO'),
(397, '7207561', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 8X30MM S&N', 'ACTIVO'),
(398, '7207563', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 9X25MM S&N', 'ACTIVO'),
(399, '7207564', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 9X30MM S&N', 'ACTIVO'),
(400, '7207566', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 10X25MM S&N', 'ACTIVO'),
(401, '7207567', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 10X30MM S&N', 'ACTIVO'),
(402, '7207916', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 7X20MM S&N', 'ACTIVO'),
(403, '7207918', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 8X20MM S&N', 'ACTIVO'),
(404, '7207919', NULL, NULL, 'UND', 'TORNILLO BIODEGRADABLE BIORCI 9X20MM S&N', 'ACTIVO'),
(405, '7208656', NULL, NULL, 'UND', 'DESTORNILLADOR BIORCI/ BIODEGRADABLE', 'ACTIVO'),
(406, '7209468', NULL, NULL, 'UND', 'PAR DE BOTA DESCARTABLE', 'ACTIVO'),
(407, '7210080', NULL, NULL, 'UND', 'ENDOBOTTON CL BTB 20MM', 'ACTIVO'),
(408, '7210081', NULL, NULL, 'UND', 'ENDOBUTTON CLB BTB 25MM', 'ACTIVO'),
(409, '7210423', NULL, NULL, 'UND', 'AGUJA PASA SUTURA ACCU PASS 45 IZQUIERDO', 'ACTIVO'),
(410, '7210424', NULL, NULL, 'UND', 'AGUJA PASA SUTURA ACCU PASS 45 DERECHO', 'ACTIVO'),
(411, '7210914', NULL, NULL, 'UND', 'SUTURAS ULTRABRAID 2 WHITE', 'ACTIVO'),
(412, '7210915', NULL, NULL, 'UND', 'SUTURAS ULTRABRAID 2 COBRAID', 'ACTIVO'),
(413, '7211080', NULL, NULL, 'UND', 'SUTURA ULTRABR2', 'ACTIVO'),
(414, '7211081', NULL, NULL, 'UND', 'SUTURA ULTRA BRAID2', 'ACTIVO'),
(415, '72200134', NULL, NULL, 'UND', 'XTENDOBUTTON ', 'ACTIVO'),
(416, '72200146', NULL, NULL, 'UND', 'ENDOBOTTON CL ULTRA 15MM', 'ACTIVO'),
(417, '72200147', NULL, NULL, 'UND', 'ENDOBOTTON CL ULTRA 20MM', 'ACTIVO'),
(418, '72200148', NULL, NULL, 'UND', 'ENDOBOTTON CL ULTRA 25MM', 'ACTIVO'),
(419, '72200149', NULL, NULL, 'UND', 'ENDOBOTTON CL ULTRA 30MM', 'ACTIVO'),
(420, '72200150', NULL, NULL, 'UND', 'ENDOBOTTON CL ULTRA 35MM', 'ACTIVO'),
(421, '72200419', NULL, NULL, 'UND', 'PASA SUTURA 70', 'ACTIVO'),
(422, '72200775', NULL, NULL, 'UND', 'ANCLA BIORAPTOR 2.9MM BIO ULTRABRAID ', 'ACTIVO'),
(423, '72201918', NULL, NULL, 'UND', 'BROCA BIORAPTOR 2.9 HUESO DÉBIL', 'ACTIVO'),
(424, '72201992', NULL, NULL, 'UND', 'ANCLA OSTEORAPTOR 2.3MM BIO ULTRABRAID C/N', 'ACTIVO'),
(425, '72201993', NULL, NULL, 'UND', 'ANCLA OSTEORAPTOR 2.3MM BIO ULTRABRAID C/A', 'ACTIVO'),
(426, '72201995', NULL, NULL, 'UND', 'ANCLA OSTEORAPTOR 2.9MM BIO ULTRABRAID B/A', 'ACTIVO'),
(427, '72201996', NULL, NULL, 'UND', 'ANCLA OSTEORAPTOR 2.9MM BIO ULTRABRAID WHITE COBRAIB', 'ACTIVO'),
(428, '72202259', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 6X20MM S&N', 'ACTIVO'),
(429, '72202260', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 6X25MM S&N', 'ACTIVO'),
(430, '72202262', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 7X20MM S&N', 'ACTIVO'),
(431, '72202263', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 7X25MM S&N', 'ACTIVO'),
(432, '72202266', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 8X20MM S&N', 'ACTIVO'),
(433, '72202267', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 8X25MM S&N', 'ACTIVO'),
(434, '72202269', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 8X30MM S&N', 'ACTIVO'),
(435, '72202271', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 9X20MM S&N', 'ACTIVO'),
(436, '72202272', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 9X25MM S&N', 'ACTIVO'),
(437, '72202273', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 9X30MM S&N', 'ACTIVO'),
(438, '72202275', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 10X20MM S&N', 'ACTIVO'),
(439, '72202276', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 10X25MM S&N', 'ACTIVO'),
(440, '72202277', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 10X30MM S&N', 'ACTIVO'),
(441, '72202280', NULL, NULL, 'UND', 'TORNILLO BIOSURE PEEK 11X30MM S&N', 'ACTIVO'),
(442, '72202315', NULL, NULL, 'UND', 'PINZA TENSA PLASTIA GRAFTMASTER III INSTRUMENTAL P/LIGAMENTOS', 'ACTIVO'),
(443, '72202316', NULL, NULL, 'UND', 'BASE DESLIZANTE PARA PLASTIA GRAFTMASTER III P/LIGAMENTOS', 'ACTIVO'),
(444, '72202397', NULL, NULL, 'UND', 'ANCLA BIORAPTOR 2.9MM PK KNOTTLES HIP', 'ACTIVO'),
(445, '72202467', NULL, NULL, 'UND', 'SUTURA MENISCAL FAST FIX RECTA', 'ACTIVO'),
(446, '72202468', NULL, NULL, 'UND', 'SUTURA MENISCAL FAST FIX CURVA', 'ACTIVO'),
(447, '72202602', NULL, NULL, 'UND', 'ANCLA TWINFIX ULTRAA 5.5MM BIO ULTRA B/A S&N', 'ACTIVO'),
(448, '72202618', NULL, NULL, 'UND', 'ANCLA TWINFIX ULTRA TI 5.5 2 SUTURAS AGUJAS', 'ACTIVO'),
(449, '72202626', NULL, NULL, 'UND', 'ANCLA TWINFIX ULTRA 5.5MM BIO ULTRABRAID C/A S&N', 'ACTIVO'),
(450, '72202674', NULL, NULL, 'UND', 'CORTADOR APLICADOR SUTURA MENISCAL', 'ACTIVO'),
(451, '72202895', NULL, NULL, 'UND', 'ANCLA 5.5MM TWINFIX ULTRA S&N C/A', 'ACTIVO'),
(452, '72202896', NULL, NULL, 'UND', 'ANCLA TWINFIX ULTRA 5.5 W/2 UB (BLK I BLUE)', 'ACTIVO'),
(453, '72202901', NULL, NULL, 'UND', 'ANCLA FOOTPRINT ULTRA 4.5MM KNOTLES', 'ACTIVO'),
(454, '72202902', NULL, NULL, 'UND', 'ANCLA FOOTPRINT ULTRA 5.5MM KNOTLES', 'ACTIVO'),
(455, '72203128', NULL, NULL, 'UND', 'HOJA DE SHAVER CADERA ROUND BURR', 'ACTIVO'),
(456, '72203290', NULL, NULL, 'UND', 'ANCLA OSTERAPTOR 2.3MM CURVO BIO ULTRABRAID A/', 'ACTIVO'),
(457, '72203291', NULL, NULL, 'UND', 'ANCLA OSTEORAPTOR 2.3 CURVO', 'ACTIVO'),
(458, '72203330', NULL, NULL, 'UND', 'ENDOBOTTON FIXATION 15MM', 'ACTIVO'),
(459, '72203336', NULL, NULL, 'UND', 'DILATADOR 5.5MM HELICOIL', 'ACTIVO'),
(460, '72203378', NULL, NULL, 'UND', 'ANCLA HEALICOIL PK 4.5MM W/2 UB-BL CBRD BL', 'ACTIVO'),
(461, '72203379', NULL, NULL, 'UND', 'ANCLA HEALICOIL PK 5.5MM ULTRABRAID A/C', 'ACTIVO'),
(462, '72203380', NULL, NULL, 'UND', 'ANCLA HEALICOIL PK 5.5MM ULTRABRAID A/C/N', 'ACTIVO'),
(463, '72203854', NULL, NULL, 'UND', 'SUTURFIX ULTRA ANCHOR 1.9 MM', 'ACTIVO'),
(464, '72203982', NULL, NULL, 'UND', 'ANCLA HEALICOIL PK 4.5 W/ ULTRA TAPE CBRD', 'ACTIVO'),
(465, '72203983', NULL, NULL, 'UND', 'ANCLA HEALICOIL PK 5.5MM ULTRATAPE AZUL', 'ACTIVO'),
(466, '72203984', NULL, NULL, 'UND', 'ANCLA HEALICOIL PK 5.5MM ULTRATAPE COBRAID', 'ACTIVO'),
(467, '72290003', NULL, NULL, 'UND', 'ULTRABUTTON AUTOJUSTABLE', 'ACTIVO'),
(468, '801-04525', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5MM X 25MM K2M', 'ACTIVO'),
(469, '801-04530', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5MM X 30MM K2M', 'ACTIVO'),
(470, '801-04535', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5MM X 35MM K2M', 'ACTIVO'),
(471, '801-04540', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5MM X 40MM K2M', 'ACTIVO'),
(472, '801-04545', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5MM X 45MM K2M', 'ACTIVO'),
(473, '801-04550', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 4.5MM X 50MM K2M', 'ACTIVO'),
(474, '801-05525', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5MM X 25MM K2M', 'ACTIVO'),
(475, '801-05530', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5MM X 30MM K2M', 'ACTIVO'),
(476, '801-05535', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5MM X 35MM K2M', 'ACTIVO'),
(477, '801-05540', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5MM X 40MM K2M', 'ACTIVO'),
(478, '801-05545', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5MM X 45MM K2M', 'ACTIVO'),
(479, '801-05550', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5MM X 50MM K2M', 'ACTIVO'),
(480, '801-05555', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 5.5MM X 55MM K2M', 'ACTIVO'),
(481, '801-06525', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5MM X 25MM K2M', 'ACTIVO'),
(482, '801-06530', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5MM X 30MM KM2', 'ACTIVO'),
(483, '801-06535', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5MM X 35MM K2M', 'ACTIVO'),
(484, '801-06540', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5MM X 40MM K2M', 'ACTIVO'),
(485, '801-06545', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5MM X 45MM K2M', 'ACTIVO'),
(486, '801-06550', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5MM X 50MM K2M', 'ACTIVO'),
(487, '801-06555', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5MM X 55MM K2M', 'ACTIVO'),
(488, '801-06560', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5MM X 60MM K2M', 'ACTIVO'),
(489, '801-06565', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 6.5MM X 65MM K2M', 'ACTIVO'),
(490, '801-06565D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 6.5X65', 'ACTIVO'),
(491, '801-06570D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 6.5X70', 'ACTIVO'),
(492, '801-06580D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 6.5X80', 'ACTIVO'),
(493, '801-06590D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 6.5X90', 'ACTIVO'),
(494, '801-075110D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 7.5X110', 'ACTIVO'),
(495, '801-07525', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5MM X 25MM K2M', 'ACTIVO'),
(496, '801-07530', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5MM X 30MM K2M', 'ACTIVO'),
(497, '801-07535', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5MM X 35MM K2M', 'ACTIVO'),
(498, '801-07540', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5MM X 40MM K2M', 'ACTIVO'),
(499, '801-07545', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5MM X 45MM K2M', 'ACTIVO'),
(500, '801-07550', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5MM X 50MM K2M', 'ACTIVO'),
(501, '801-07555', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5MM X 55MM K2M', 'ACTIVO'),
(502, '801-07560', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 7.5MM X 60MM K2M', 'ACTIVO'),
(503, '801-07565D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 7.5X65', 'ACTIVO'),
(504, '801-07570D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 7.5X70', 'ACTIVO'),
(505, '801-07580D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 7.5X80', 'ACTIVO'),
(506, '801-07590D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 7.5X90', 'ACTIVO'),
(507, '801-085100D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 8.5X100', 'ACTIVO'),
(508, '801-08525', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 8.5MM X 25MM K2M', 'ACTIVO'),
(509, '801-08530', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 8.5MM X 30MM K2M', 'ACTIVO'),
(510, '801-08535', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 8.5MM X 35MM K2M', 'ACTIVO'),
(511, '801-08540', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 8.5MM X 40MM K2M', 'ACTIVO'),
(512, '801-08545', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 8.5MM X 45MM K2M', 'ACTIVO'),
(513, '801-08550', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 8.5MM X 50MM K2M', 'ACTIVO'),
(514, '801-08555', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 8.5MM X 55MM K2M', 'ACTIVO'),
(515, '801-08560', NULL, NULL, 'UND', 'TORNILLO POLIAXIAL 8.5MM X 60MM K2M', 'ACTIVO'),
(516, '801-08565D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 8.5X65', 'ACTIVO'),
(517, '80108570D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 8.5MM X 70MM', 'ACTIVO'),
(518, '801-08570D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 8.5X70', 'ACTIVO'),
(519, '801-08580D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 8.5X80', 'ACTIVO'),
(520, '801-08590D', NULL, NULL, 'UND', 'TORNILLO FOUNDATION 8.5X90', 'ACTIVO'),
(521, '801-34525M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 4.5MM X 25MM K2M', 'ACTIVO'),
(522, '801-34530M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 4.5MM X 30MM K2M', 'ACTIVO'),
(523, '801-34535M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 4.5MM X 35MM K2M', 'ACTIVO'),
(524, '801-34540M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 4.5MM X 40MM K2M', 'ACTIVO'),
(525, '801-34545M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 4.5MM X 45MM K2M', 'ACTIVO'),
(526, '801-35525M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 5.5MM X 25MM K2M', 'ACTIVO'),
(527, '801-35530M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 5.5MM X 30MM K2M', 'ACTIVO'),
(528, '801-35535M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 5.5MM X 35MM K2M', 'ACTIVO'),
(529, '801-35540M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 5.5MM X 40MM K2M', 'ACTIVO'),
(530, '801-35545M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 5.5MM X 45MM K2M', 'ACTIVO'),
(531, '801-35550M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 5.5MM X 50MM K2M', 'ACTIVO'),
(532, '801-36530M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 6.5MM X 30MM K2M', 'ACTIVO'),
(533, '801-36535M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 6.5MM X 35MM K2M', 'ACTIVO'),
(534, '801-36540M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 6.5MM X 40MM K2M', 'ACTIVO'),
(535, '801-36545M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 6.5MM X 45MM K2M', 'ACTIVO'),
(536, '801-36550M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 6.5MM X 50MM K2M', 'ACTIVO'),
(537, '801-36555M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 6.5MM X 55MM K2M', 'ACTIVO'),
(538, '801-37530M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 7.5MM X 30MM K2M', 'ACTIVO'),
(539, '801-37535M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 7.5MM X 35MM K2M', 'ACTIVO'),
(540, '801-37540M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 7.5MM X 40MM K2M', 'ACTIVO'),
(541, '801-37545M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 7.5MM X 45MM K2M', 'ACTIVO'),
(542, '801-37550M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 7.5MM X 50MM K2M', 'ACTIVO'),
(543, '801-37555M', NULL, NULL, 'UND', 'TORNILLO UNIPLANAR 7.5MM X 55MM K2M', 'ACTIVO'),
(544, '801-70021A', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL 21MM K2M', 'ACTIVO'),
(545, '801-70024A', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL 24MM K2M', 'ACTIVO'),
(546, '801-70027A', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL 27MM K2M', 'ACTIVO'),
(547, '801-70030A', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL 30MM K2M', 'ACTIVO'),
(548, '801-70033A', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL 33MM K2M', 'ACTIVO'),
(549, '801-70036A', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL 36MM K2M', 'ACTIVO'),
(550, '801-70039A', NULL, NULL, 'UND', 'CONECTOR TRANSVERSAL 39MM K2M', 'ACTIVO'),
(551, '801-73040', NULL, NULL, 'UND', 'CONECTOR REGULABLE LP K2M', 'ACTIVO'),
(552, '801-74050', NULL, NULL, 'UND', 'CONECTOR REGULABLE LP K2M', 'ACTIVO'),
(553, '801-75060', NULL, NULL, 'UND', 'CONECTOR REGULABLE LP K2M', 'ACTIVO'),
(554, '801-76070', NULL, NULL, 'UND', 'CONECTUR REGULABLE LP K2M', 'ACTIVO'),
(555, 'AC2430-01', NULL, NULL, 'UND', 'PUNTA DE RADIOFRECUENCIA 3.0MM X 45° C/INTEGRADO', 'ACTIVO'),
(556, 'AC3525-01', NULL, NULL, 'UND', 'PUNTA DE RADIOFRECUENCIA 2.5MM X 60ª C/CABLE', 'ACTIVO'),
(557, 'AC4050-01', NULL, NULL, 'UND', 'PUNTA DE ARTHROCARE MICROBLATOR 1.4 X 30ª', 'ACTIVO'),
(558, 'AC4330-01', NULL, NULL, 'UND', 'PUNTA DE ARTHROCARE SABER', 'ACTIVO'),
(559, 'AC4340-01', NULL, NULL, 'UND', 'PUNTA DE RADIOFRECUENCIA COVATOR', 'ACTIVO'),
(560, 'AC5531-01', NULL, NULL, 'UND', 'PUNTA PARAGON T2 WAND', 'ACTIVO'),
(561, 'ACH4045-01', NULL, NULL, 'UND', 'PUNTA DE RADIOFRECUENCIA TOPAZ XL', 'ACTIVO'),
(562, 'ANT', NULL, NULL, 'UND', 'PAGO POR ANTICIPO', 'ACTIVO'),
(563, 'ANTI', NULL, NULL, 'UND', 'PAGO POR ANTICIPO', 'ACTIVO'),
(564, 'AR6420DS', NULL, NULL, 'UND', 'HOJA DE SHAVER DISSECTOR XL 4.2MM', 'ACTIVO'),
(565, 'AR-8400EX', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.0MM EXCALIBUR', 'ACTIVO'),
(566, 'ASC1336-01', NULL, NULL, 'UND', 'PUNTA DE RADIOFRECUENCIA XL90', 'ACTIVO'),
(567, 'ASC2530-01', NULL, NULL, 'UND', 'PUNTA RADIOFRECUENCIA COVAC 50', 'ACTIVO'),
(568, 'ASC3730-01', NULL, NULL, 'UND', 'PUNTA DE ARTHROCARE COVAC 70', 'ACTIVO'),
(569, 'ASC4250-01', NULL, NULL, 'UND', 'PUNTA DE RADIOFRECUENCIA S. TURBOVAC 90', 'ACTIVO'),
(570, 'ASC4251-01', NULL, NULL, 'UND', 'PUNTA DE RADIOFRECUENCIA STARVAC 90', 'ACTIVO'),
(571, 'ASHA3730-01', NULL, NULL, 'UND', 'PUNTA RADIOFRECUENCIA C OVAC 70 AMBIENT CONTROL TEMPERATURA', 'ACTIVO'),
(572, 'ASHA4250-01', NULL, NULL, 'UND', 'PUNTA ARTHROCARE S. TURBO VAC 90 AMBIENT CONTROL TEMPERATURA', 'ACTIVO'),
(573, 'ASHA4830-01', NULL, NULL, 'UND', 'PUNTA ARTHROCARE S. MULTIVAC 50 AMBIENT CONTROL TEMPERATURA', 'ACTIVO'),
(574, 'CAMPO', NULL, NULL, 'UND', 'CAMPO DE ARTROSCOPIA RODILLA', 'ACTIVO'),
(575, 'CAMPOH', NULL, NULL, 'UND', 'CAMPO ARTHROSCOPIA HOMBRO', 'ACTIVO'),
(576, 'CM-2410', NULL, NULL, 'UND', 'IMPLANTE FEMORAL ANTEROMEDIAL APERFIX 10MM X 24MM CAYENNE', 'ACTIVO'),
(577, 'CM-2909', NULL, NULL, 'UND', 'IMPLANTE FEMORAL APERFIX 09MM X 29MM CAYENNE', 'ACTIVO'),
(578, 'CM-2910', NULL, NULL, 'UND', 'IMPLANTE FEMORAL APERFIX 10MM X 29MM CAYENNE', 'ACTIVO'),
(579, 'CM-2911', NULL, NULL, 'UND', 'IMPLANTE FEMORAL APERFIX 11MM X 29MM CAYENNE', 'ACTIVO'),
(580, 'CM-3010C', NULL, NULL, 'UND', 'IMPLANTE TIBIAL APERFIX 10 X30MM CAYENNE', 'ACTIVO'),
(581, 'CM-3011C', NULL, NULL, 'UND', 'IMPLANTE TIBIAL APERFIX 11X30MM CAYENNE', 'ACTIVO'),
(582, 'CM-8000', NULL, NULL, 'UND', 'KIT APLICADOR PARA SUTURA MENISCAL', 'ACTIVO'),
(583, 'CM-8002', NULL, NULL, 'UND', 'SUTURA MENISCAL CURVA', 'ACTIVO'),
(584, 'CM-9129', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 2.9MM QUATTRO', 'ACTIVO'),
(585, 'CM-9145', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 4.5MM KNOTLES QUATTRO', 'ACTIVO'),
(586, 'CM9145SP', NULL, NULL, 'UND', 'ANCLA DE 4.5MM CAYENNE', 'ACTIVO'),
(587, 'CM-9255', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 5.5MM QUATTRO', 'ACTIVO'),
(588, 'CM-9329', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 2.9MM QUATTRO', 'ACTIVO'),
(589, 'CM-9329GL2', NULL, NULL, 'UND', 'ANCLA PARA HOMBRO 2.9MM QUATTRO', 'ACTIVO'),
(590, 'CM-9614', NULL, NULL, 'UND', 'ANCLA 1.4MM SURELOCK CAYENNE', 'ACTIVO');
INSERT INTO `maeart` (`id`, `codigo`, `codigo2`, `codigo3`, `unidad`, `descripcion`, `estado`) VALUES
(591, 'CM-9620', NULL, NULL, 'UND', 'KIT DRILL LARGE 2.2MM', 'ACTIVO'),
(592, 'CM-9622', NULL, NULL, 'UND', 'ANCLA 2.2MM SURE LOCK CAYENNE', 'ACTIVO'),
(593, 'CM-9640', NULL, NULL, 'UND', 'KIT DRILL LARGE 1.4MM', 'ACTIVO'),
(594, 'FACTRON', NULL, NULL, 'UND', 'FACTRON', 'ACTIVO'),
(595, 'HYP-05', NULL, NULL, 'UND', 'TORNILLO IMPLANTE STENT 05', 'ACTIVO'),
(596, 'HYP-06', NULL, NULL, 'UND', 'TORNILLO IMPLANTE STENT 06', 'ACTIVO'),
(597, 'HYP-07', NULL, NULL, 'UND', 'TORNILLO IMPLANTE STENT 07', 'ACTIVO'),
(598, 'HYP-08', NULL, NULL, 'UND', 'TORNILLO IMPLANTE STENT 08', 'ACTIVO'),
(599, 'HYP-09', NULL, NULL, 'UND', 'TORNILLO IMPLANTE STENT 09', 'ACTIVO'),
(600, 'HYP-10', NULL, NULL, 'UND', 'TORNILLO IMPLANTE STENT 10', 'ACTIVO'),
(601, 'M6008', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.5MM OVAL BURR D', 'ACTIVO'),
(602, 'M6063', NULL, NULL, 'UND', 'HOJA DE SHAVER 4.5MM FULL RADIS S.', 'ACTIVO'),
(603, 'OM-6500', NULL, NULL, 'UND', 'ANCLA OPUS SPEEDSCREW', 'ACTIVO'),
(604, 'OM-8078', NULL, NULL, 'UND', 'SUTURA MENISCAL FAST FIX C SMARTSTITCH', 'ACTIVO'),
(605, 'OM-8175', NULL, NULL, 'UND', 'PASADOR SUTURA SMARTSTITCH', 'ACTIVO'),
(606, 'PRH-028-PI01', NULL, NULL, 'UND', 'TORNIQUETE EXAGINADOR 28 ROSADO', 'ACTIVO'),
(607, 'PRH-032-MA-01A', NULL, NULL, 'UND', 'TORNIQUETE TOBILLO', 'ACTIVO'),
(608, 'PRH-035FA-01A', NULL, NULL, 'UND', 'TORNIQUETE BRAZO/MUÑECA', 'ACTIVO'),
(609, 'PRH-040-YE01', NULL, NULL, 'UND', 'TORNIQUETE EXANGINADOR 40 AMARILLO', 'ACTIVO'),
(610, 'PRH-060-BR01', NULL, NULL, 'UND', 'TORNIQUETE EXANGINADOR 60 MARRON', 'ACTIVO'),
(611, 'PRH-090-BW01', NULL, NULL, 'UND', 'TORNIQUETE EXANGINADOR 90 BLANCO & NEGRO', 'ACTIVO'),
(612, 'PS1160', NULL, NULL, 'UND', 'VENDAJE ADHESIVO ZIP 16', 'ACTIVO'),
(613, 'PS200-001', NULL, NULL, 'UND', 'PEAK PLASMA NEEDLE', 'ACTIVO'),
(614, 'PS200-040', NULL, NULL, 'UND', 'PEEK PLASMA BLADE 4.0', 'ACTIVO'),
(615, 'PS210-030S', NULL, NULL, 'UND', 'PEEK PLASMA BLADE 3.0 CON SUCTION', 'ACTIVO'),
(616, 'PULLU01201', NULL, NULL, 'UND', 'PULLUP ADJUST FIXATION CORT TUNEL 4.5MM', 'ACTIVO'),
(617, 'SERV001', NULL, NULL, 'UND', 'VARIOS', 'ACTIVO'),
(618, 'SET', NULL, NULL, 'UND', 'SET DE RECONSTRUCCION DE LIGAMENTO CRUZADO ANTERIOR', 'ACTIVO'),
(619, 'SMD431904', NULL, NULL, 'UND', 'EQUIPO DE SUCCION ', 'ACTIVO'),
(620, 'TEXTO', NULL, NULL, 'UND', '--', 'ACTIVO'),
(621, 'VENTAS', NULL, NULL, 'UND', 'APP VENTAS', 'ACTIVO'),
(622, 'VP150-10', NULL, NULL, 'UND', 'TUBERIA DE IRRIGACION', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maecli`
--

CREATE TABLE `maecli` (
  `id` int(11) NOT NULL,
  `codigo` varchar(12) NOT NULL,
  `ruc` varchar(12) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maecli`
--

INSERT INTO `maecli` (`id`, `codigo`, `ruc`, `razon_social`, `direccion`) VALUES
(1, '000125', '20131257750', 'HOSPITAL NIVEL II VITARTE', 'AV. SAN MARTIN DE PORRAS 265-VITARTE -LIMA'),
(2, '000139', '20131257750', 'ESSALUD HOSPITAL DE EMERGENCIAS GRAU', 'AV GRAU 351 LIMA'),
(3, '000141', '20131257750', 'ESSALUD HOSPITAL NACIONAL EDGARDO REBAGLIATI MARTINS', 'AV. DOMINGO CUETO S/N JESUS MARIA'),
(4, '000148', '20131257750', 'ESSALUD HOSPITAL NACIONAL GUILLERMO ALMENARA', 'AV. GRAU N°800 LA VICTORIA'),
(5, '000166', '20107695584', 'BRITISH AMERICAN HOSPITAL S.A.', 'ALFREDO SALAZAR 350 SAN ISIDRO-LIMA'),
(6, '000178', '20131257750', 'SEGURO SOCIAL DE SALUD-ESSALUD-AREQUIPA', 'ESQ. PERAL Y AYACUCHO S/N AREQUIPA'),
(7, '000182', '20477355057', 'HOSPITAL NIVEL IV VICTOR LAZARTE ECHEGARAY', 'CAL. UNION NRO. 1350 URB. A. RAZURI LA LIBERTAD - TRUJILLO - TRUJILLO'),
(8, '000189', '20163129753', 'HOSPITAL NACIONAL NIVEL IV -IPSS-', 'PZA. SEGURIDAD SOCIAL NRO. S/N URBANA LAMBAYEQUE - CHICLAYO '),
(9, '000190', '20131257750', 'SEGURO SOCIAL DE SALUD ESSALUD-RED MOQUEGUA', 'CALLE LIMA 869 - MOQUEGUA'),
(10, '000191', '20131257750', 'SEGURO SOCIAL DE SALUD-ESSALUD-RED MOYOBAMBA', 'JR. VARACADILLO N° 324 - MOYOBAMBA'),
(11, '000192', '20519143683', 'MEGASALUD NARANJAL SAC', 'AV. NARANJAL NRO. 1582 URB. EL PARQUE NARANJAL ET 1 LIMA - LIMA - LOS OLIVOS'),
(12, '000193', '20131257750', 'SEGURO SOCIAL DE SALUD-ESSALUD-RED ASISTENCIAL PIURA', 'AV. INDEPENDENCIA S/N URB. MIRAFLORES CASTILLA PIURA'),
(13, '000195', '20131257750', 'SEGURO SOCIAL DE SALUD-ESSALUD-RED REBAGLIATI', 'AV. EDGARDO REBAGLIATI 490 JESUS MARIA-LIMA'),
(14, '000198', '20101098681', 'PROMOTORA ASISTENCIAL S.A.C CLINICA LIMATAMBO', 'AV. PROCERES DE LA INDEPENDEN NRO. 2701 URB. SAN CARLOS-LIMA-SJL'),
(15, '00020', '20131257750', 'SEGURO SOCIAL DE SALUD', 'AV. ARENALES Nº1302 - COMPLEJO ARENALES OFICINA 416 - JESUS MARIA'),
(16, '000200', '20131257750', 'SEGURO SOCIAL DE SALUD ESSALUD-RED ASISTENCIAL TACNA', 'CARRETERA A CALANA KM. 6.5 TACNA-CALANA'),
(17, '000201', '20131257750', 'ESSALUD TRUJILLO', 'AV. LA MARINA S/N URB. PARAISO LA LIBERTAD'),
(18, '000202', '20131257750', 'SEGURO SOCIAL DE SALUD-ESSALUD', 'JULIO GUTIERREZ NRO. 322 LOS JARDINES - LA LIBERTAD'),
(19, '000203', '20131257750', 'HOSPITAL GUILLERMO KAELIN DE LA FUENTE', 'AV. 26 DE NOVIEMBRE Y DEFENSORES DE VILLA DEL TRIUNFO'),
(20, '0009', '20131257750', 'SEGURO SOCIAL DE SALUD - POLICLINICO GRAU', 'Lima 15001'),
(21, '00127', '20131257750', 'HOSPITAL OCTAVIO MONGRUT MUÑOZ - ESSALUD', 'AV PARQUE DE LAS LEYENDAS 255, SAN MIGUEL, LIMA'),
(22, '002356', '20131257750', 'SEGURO SOCIAL DE SALUD AYACUCHO', 'Av. Venezuela S/N Canan Alto - San Juan Bautista - Ayacucho'),
(23, '003', '20131257750', 'Hospital Carlos Alcántara Butterfield', 'Av. Los Constructores 1201, La Molina 15012'),
(24, '005', '20131257750', 'SEGURO SOCIAL DE SALUD -ESSALUD RED JUNIN', 'Av. Independencia Nº 296 - El Tambo - Huancayo'),
(25, '006', '20131257750', 'SEGURO SOCIAL DE SALUD - ESSALUD RED ICA', 'AV. CUTERVO Nº 104 - CERCADO DE ICA - ICA'),
(26, '0078', '20131257750', 'SEGURO SOCIAL DE SALUD', 'AV. SAN MARTIN DE PORRAS 265 - VITARTE - LIMA'),
(27, '100', '20131257750', 'SEGURO SOCIAL DE SALUD-ESSALUD RED ASISTENCIA SABOGAL ', 'JR. COLINA 1081 BELLAVISTA CALLAO'),
(28, '10061859228', '10061859298', 'GONZALES PINEDO RODOLFO ', 'JR. ANTONIO MIRO QUESADA NRO. 332 CERCADO (ALT CDA 3 MIROQUESADA) LIMA'),
(29, '10063027133', '10063027133', 'SHIMABUKURO CHINEN JUAN AUGUSTO', 'CAL. FEDERICO VILLAREAL NRO. 187 BREÑA-LIMA'),
(30, '10066836636', '10066836636', 'LAG C REPRESENTACIONES GENERALES', 'JR. MANTARO 143 BREÑA'),
(31, '10066947179', '10066947179', 'TORRES VELASQUEZ JULIAN ANTONIO', 'CALLE SANTA NATALIA 163 DPTO 402 CERCADO DE LIMA - LIMA'),
(32, '10067432253', '10067432253', 'BOTICA SHALON E.I.R.L.', 'AV. BRASIL Nº514 BREÑA'),
(33, '10068878492', '10068878492', 'ANTONIO MEDINA VALDIZAN', 'AV. AREQUIPA Nº1374 SANTA BEATRIZ'),
(34, '10074952874', '10074952874', 'CORTEZ SOTO JOSE ALBERTO', 'JR. SEBASTIAN BARRANCA NRO. 930 INT. 11 LA VICTORIA LIMA'),
(35, '10076338341', '10076338341', 'GUTIERREZ SANCHEZ CARMEN CECILIA', 'AV 26 DE MAYO MZ L. LT. 20 URB ALAMEDA DE ATE - 1RA ETAPA - ATE'),
(36, '10078361773', '10078361773', 'CESAR JOSE TASSARA CANEVARO', 'DOMINGO ORRUE CDRA. 4 SURQUILLO'),
(37, '10078634176', '10078634176', 'PARRA MAZA RAUL ELISEO', 'CAL.JUAN SANTOS NRO. 106 URB. AURORA LIMA - LIMA - MIRAFLORES'),
(38, '10078833161', '10078833161', 'VARGA BARAY PETER ', 'AV. AREQUIPA NRO. 4255 DPTO. 705 (ENTRE AV. ARAMBURU Y ANGAMOS) LIMA - LIMA - MIRAFLORES'),
(39, '10087472286', '10087472286', 'HARRY WILLIANS CARNERO SALDARRIAGA', 'MANUEL GONZALES DE LA ROSA Nº109 SAN ISIDRO'),
(40, '10088782246', '10088782246', 'FARMACIA ÑAGUI', 'AV. TINGO MARIA Nº421 BREÑA'),
(41, '10091744754', '10091744754', 'SANTIAGO PUMACAHUA AUGUSTINA ', 'JR. CASTROVIRREYNA NRO. 704 (A ESPALDA DEL COLEGIO M.MELGAR)LIMA - BREÑA'),
(42, '10092234181', '10092234181', 'CORDOVA SERNA ABILIO ', 'AV. ALFONSO UGARTE MZA. E LOTE. 10 COO. DEMSA (CERCA GRANJA AZUL)LIMA - ATE'),
(43, '10096762866', '10096762866', 'PEREZ QUISPE FLORA SILVIA', 'AV. PETIT THOUARS NRO. 5321 INT. 15 LIMA - LIMA - MIRAFLORES'),
(44, '101', '20131257750', 'SEGURO SOCIAL DE SALUD-ESSALUD RED ASISTENCIA SABOGAL', 'JR. COLINA 1081 BELLAVISTA CALLAO-CALLAO'),
(45, '10103320521', '10103320521', 'TACILLA RAMIREZ NANCY JESUS', 'MATIA MARTINEZ 176 - CHORRILLOS'),
(46, '10103725823', '10103725823', 'RAMOS GARCIA EPIFANIO ', 'JR. LOS CEDROS NRO. 113 URB. PANDO (FRENTE A LA FACUL DE CIENCIAS UNMSM)LIMA - SAN MIGUEL'),
(47, '10105412890', '10105412890', 'JUAN CARLOS GANOZA ARROSPIDE', 'JACINTO LARA Nº128 SAN ISIDRO'),
(48, '10160022766', '10160022766', 'ARGÜELLES VIZARRETA SOFIA ', 'JR. CHASQUITAMBO NRO. 374 INT. 301 URB. PARQUE EL NARANJAL -LIMA-LOS OLIVOS'),
(49, '102', '20131257750', 'SEGURO SOCIAL DE SALUD - ESSALUD', 'AV. GRAU 800 LA VICTORIA-LIMA - LIMA'),
(50, '10294700001', '10294700001', 'TICONA TOALINO JOSE RUFO', 'CAL.JEVIER HERAUD NRO. 102 URB. 13 DE ENERO AREQUIPA- JOSE LUIS BUSTAMANTE Y RIVERO'),
(51, '10329232994', '10329232994', 'MAGALI MENDEZ RODRIGUEZ', 'JR. LEONCIO PRADO Nº553-08 SANTA CHIMBOTE'),
(52, '10329810548', '10329810548', 'RAMOS MARCELO ROBLES', 'CHIMBOTE'),
(53, '10337208385', '10337208385', 'GOMEZ LOPEZ NINFA ', 'CAR.MARGINAL NRO. S/N (COSTADO GRIFO ANTHONY)SAN MARTIN - MOYOBAMBA - MOYOBAMBA'),
(54, '104', '20521014505', 'MEDI-K', 'Av. Camino Real Nro. 348 Int. 99 (Interior 99-100 - Nivel B)'),
(55, '10401177987', '10401177987', 'LOPEZ ACOSTA EDELMIRA ROSARIO DE FATIMA', 'AV. LOS PRECURSORES NRO. 763 URB. MARANGA (CUADRA 02 AV. FAUCETT)LIMA - SAN MIGUEL'),
(56, '10408100475', '10408100475', 'MALDONADO CASTRO EDWIN ALCIDES', 'AV. SAN LUIS NRO. 310 JUNIN - HUANCAYO - HUANCAYO'),
(57, '10410509534', '10410509534', 'ATENCIA ESPINOZA EDILBERTO JESUS', 'CAL. ANDRES SANTA CRUZ NRO. 518 DPTO. 201 JESUS MARIA-LIMA'),
(58, '10423563694', '10423563694', 'GARAY SANCHEZ MARIA ELIZABETH', 'MZA. D2 LOTE. 23 SAN GENARO LIMA - CHORRILLOS'),
(59, '10424791551', '10424791551', 'AJAHUANA SUCASACA YURI NESTOR', 'MZA. M LOTE. 8 A.H. EL TRIUNFO II (2 CDRAS DEL TORIL) AREQUIPA - AREQUIPA - LA JOYA'),
(60, '10432988967', '10432988967', 'PULACHE CORDOVA JUAN ALBERTO', 'MZA. D LOTE. 7 ASOC.PROP.LOS ANDES (ALT.PUENTE CAMOTE)LIMA - SAN MARTIN DE PORRES'),
(61, '10453722118', '10453722118', 'HARO CANGAHUALA CARLOS ALBERTO', 'MZA. J LOTE. 34 A.H. LIMATAMBO VILLA MARIA DEL TRIUNFO-LIMA'),
(62, '10461080141', '10461080141', 'VASQUEZ SUMARIA RAUL CESAR', 'CAL. GARAYCOCHEA NRO. 218 AREQUIPA - AREQUIPA'),
(63, '10467436207', '10467436207', 'GUILLEN PAREDES LEYLA GHERALDINE', 'CAL.JUNIN NRO. 217 MOQUEGUA - ILO - ILO'),
(64, '10469068116', '10469068116', 'MARIN LEON TATIANA ', 'JR. HUALLAGA NRO. 813 SAN MARTIN - MARISCAL CACERES - JUANJUI'),
(65, '105', '20131257750', 'SEGURO SOCIAL DE SALUD-ESSALUD-RED REBAGLIATI', 'AV. EDGARDO REBAGLIATI 490 JESUS MARIA-LIMA'),
(66, '106', '20131257750', 'SEGURO SOCIAL DE SALUD -ESSALUD RED PASCO', 'CASA DE PIEDRA S/N - CHAUPIMARCA - CERRO DE PASCO'),
(67, '10772017273', '10772017273', 'CHAVEZ BUSTAMANTE HANS JAIR', 'JR. NAPO NRO. 810 DPTO. 402 LIMA - LIMA - BREÑA'),
(68, '108', '20131257750', 'ESSALUD RED ASISTENCIAL MOQUEGUA', 'Pampa San Fracisco S/N - Moquegua'),
(69, '10800686879', '10800686879', 'GARCIA QUISPE MIGUEL JOAQUIN', 'CAL.FORTUNATO OLIVARI NRO. 212 ICA - CHINCHA - GROCIO PRADO'),
(70, '1111', '20131257750', 'SEGURO SOCIAL DE SALUD -ESSALUD RED CUSCO', 'AV. MICAELA BASTIDAS S/N CUSCO - WANCHAQ'),
(71, '11111', '10256221646', 'NOEL MARCHAN LUZ MARIA', 'AV. ARENALES NRO. 1441 INT. 168 -LINCE-LIMA'),
(72, '125', '20514772194', 'HOSPITAL MUNICIPAL LOS OLIVOS', 'AV. NARANJAL NRO. 318 URB. INDUSTRIAL NARANJAL (CRUCE PANAM.NORT/AV NARANJAL(OVALO)) LIMA - LIMA - L'),
(73, '15124221649', '15124221649', 'CLINICA JORGE MORENO RODRIGUEZ', 'AV.MONTERRICO 1057 URB. EL DEREY SURCO LIMA'),
(74, '15178366251', '15178366251', 'REQUENA CORNEJO RICHAR ABRAHAM', 'AV. RICARDO PALMA 940 URB. SAN JUAQUIN PROV. CONST. DEL CALLAO - BELLAVISTA'),
(75, '20100025168', '20100025168', 'FARMACIA UNIVERSAL S.A.C.', 'AV. DE LA EMANCIPACION Nº799 LIMA'),
(76, '20100035392', '20100035392', 'EL PACIFICO PERUANO SUIZA CIA. DE SEGUROS Y REASEGUROS', 'AV. JUAN DE ARONA 830 SAN ISIDRO LIMA'),
(77, '20100041953', '20100041953', 'RIMAC SEGUROS Y REASEGUROS', 'CAL. LAS BEGONIAS NRO. 475 INT. P-3 - SAN ISIDRO'),
(78, '20100054184', '20100054184', 'CLINICA INTERNACIONAL S.A.', 'JR. WASHINGTON Nº1471 LIMA-LIMA'),
(79, '20100072085', '20100072085', 'LABORATORIOS ABEEFE S.A.', 'AV. E. CANAVAL Y MOREYRA Nº694 CORPAC SAN ISIDRO'),
(80, '20100079501', '20100079501', 'CIA. DE MINAS BUENAVENTURA S.A', 'AV. CARLOS VILLARAN Nº790 STA. CATALINA LA VICTORIA'),
(81, '20100121809', '20100121809', 'ADMINISTRADORA CLINICA RICARDO PALMA S.A.', 'AV. JAVIER PRADO ESTE Nº1066 SAN ISIDRO-LIMA'),
(82, '20100122368', '20100122368', 'CLINICA JAVIER PRADO S.A.', 'CAL. LAS ORQUIDEAS NRO. 365 - SAN ISIDRO - LIMA '),
(83, '20100134889', '20100134889', 'ASOCIACION BENEFICA ANGLO AMERICANA', 'AV. SALAZAR 3ERA CDRA S/N SAN ISIDRO'),
(84, '20100162742', '20100162742', 'CLINICA SAN FELIPE S.A.', 'AV GREGORIO ESCOBEDO Nº650 JESUS MARIA-LIMA'),
(85, '20100176964', '20100176964', 'LA ESPERANZA DEL PERU S.A.', 'AV. GUARDIA CIVIL Nº337 SAN BORJA-LIMA'),
(86, '20100178401', '20100178401', 'VESALIO S.A.', 'CALLE UNO Nº140 URB. STO. THOMAS SAN BORJA'),
(87, '20100207941', '20100207941', 'CLINICA AREQUIPA S. A.', 'ESQ.PUENTE GRAU Y AV. BOLOGNESI- AREQUIPA'),
(88, '20100210909', '20100210909', 'LA POSITIVA SEGUROS Y REASEGUROS', 'FRANCISCO MASIAS 370 SAN ISIDRO-LIMA'),
(89, '20100251176', '20100251176', 'CLINICA BELLAVISTA S.A.C', 'LAS GAVIOTAS Nº207 BELLAVISTA'),
(90, '20100354731', '20100354731', 'CLINICA SANTA TERESA S.A.', 'LOS HALCONES Nº410 SURQUILLO'),
(91, '20100375142', '20100375142', 'CLINICA SANTA LUCIA', 'AV. GUARDIA CIVIL Nº301 SAN BORJA'),
(92, '20100462037', '20100462037', 'DROGUERIA IMPORTADORA DE ART. MEDICOS S.A.', 'JR. AYACUCHO Nº1195 LIMA'),
(93, '20100533741', '20100533741', 'IMPROVENG S.R.LTDA.', 'JR. HUANCAVELICA Nº421 OF. 501 LIMA'),
(94, '20100570433', '20100570433', 'CLINICA SANTA BEATRIZ SOCIEDAD ANONIMA CERRADA', 'JR. MANUEL DEL PINO NRO. 338 LIMA - LIMA - LIMA'),
(95, '20100643503', '20100643503', 'CARDIOMEDIC S.A.', 'WASHINGTON Nº1491 LIMA'),
(96, '20100905800', '20100905800', 'CLINICA SAN BERNARDO S.A.', 'JR SAN JOSE 161 URB. FUNDO OVAGUE-PUEBLO LIBRE'),
(97, '20101039910', '20101039910', 'ONCOSALUD S.A.C.', 'AV. GUARDIA CIVIL NRO. 571 LIMA - LIMA - SAN BORJA'),
(98, '20101058973', '20101058973', 'ASOCIACION CLINICA ITALIANA DE ASISTENCIA', 'EDISON Y BURGOS S/N SAN ISIDRO'),
(99, '20101097448', '20101097448', 'LA PROTECTORA CORREDORES DE SEGUROS SA', 'AV. SANTA CRUZ NRO. 376 URB. SANTA CRUZ LIMA - LIMA - SAN ISIDRO'),
(100, '20101098681', '20101098681', 'PROMOTORA ASISTENCIAL S.A.C - CLINICA LIMATAMBO', 'AV. REPUBLICA DE PANAMA Nº3606 -SAN ISIDRO LIMA'),
(101, '20101165389', '20101165389', 'CSALUD S.A.', 'AV. BENAVIDES NRO. 5362 URB. LAS GARDENIAS (COSTADO DEL PARQUE DE LA AMISTAD) LIMA - SANTIAGO'),
(102, '20101252273', '20101252273', 'CLINICA MONTEFIORI SAC', 'AV. SEPARADORA INDUSTRIAL Nº390 LA MOLINA'),
(103, '20101267386', '20101267386', 'PROMED E.I.R.L.', 'AV. GREGORIO ESCOBEDO Nº778 JESUS MARIA'),
(104, '20101267467', '20101267467', 'ASOCIACION PERUANO JAPONESA', 'AV. GREGORIO ESCOBEDO NRO. 803 RES. SAN FELIPE JESUS MARIA-LIMA'),
(105, '20101275052', '20101275052', 'CENTRAL COOP DE SERVICIOS SERVIPERU LTDA (SERVISALUD)', 'JR. MAXIMO ABRIL NRO. 552 URB. SANTA BEATRIZ - LIMA - JESUS MARIA'),
(106, '20101281880', '20101281880', 'ORTHOMED S.A.', 'AV. REPUBLICA DE CHILE Nº476 OF.702 JESUS MARIA'),
(107, '20101293115', '20101293115', 'COATS CADENA S.A', 'NICOLAS AYLLON Nº2925 EL AGUSTINO'),
(108, '20101299237', '20101299237', 'SERVICIO COMPLETO DE AGUA Y ALCANTARILLADO S.R.L.', 'JR. OSA MAYOR Nº141 SAN JUAN DE LURIGANCHO'),
(109, '20101317316', '20101317316', 'DIESTRA S.A.C.', 'MZA. E LOTE. 2B SOC. UNION COLONIZADORES (1/2 CDRA MRDO UNICACHI, PRLNG 1ERO MAYO)LIMA -VILL'),
(110, '20102086881', '20102086881', 'CLINICA MORILLAS S A', 'AV. EL POLO NRO. 545 URB. EL DERBY (FRENTE CLINICA TEZA) LIMA - LIMA - SANTIAGO DE SURCO'),
(111, '20102101601', '20102101601', 'SOCIEDAD GANADERA EL SEQUION S A', 'AV. LOS FAISANES NRO. 585 URB. LA CAMPINA LIMA - LIMA - CHORRILLOS'),
(112, '20102161336', '20102161336', 'CLINICA SAN VICENTE S A', 'Av. Peru Nro. 3220 '),
(113, '20102162812', '20102162812', 'ARTESANOS UNIDOS ARTUNI S.R.L.', 'CALLE 10MZ G. LOTE 22 URB. EL OLIVAR CALLA LIMA'),
(114, '20102756364', '20102756364', 'CLINICA MIRAFLORES SA', 'CAL. LAS DALIAS NRO. MZ A INT. LT12 URB. MIRAFLORES PIURA - CASTILLA'),
(115, '20106520730', '20106520730', 'CLINICA SANTA MONICA', 'AV. AREQUIPA Nº2449 LINCE'),
(116, '20106695700', '20106695700', 'PROSERV V&V S.A.', 'CANEVARO Nº753 LINCE'),
(117, '20106914789', '20106914789', 'ARTRI S.A.', 'AV GREGORIO ESCOBEDO 660 JESUS MARIA'),
(118, '201074637', '20107463705', 'CLINICA SAN PABLO S.A.C ', 'JIRON INES HUAYLAS 172 CENTENARIO- DISTRITO DE INDEPENDENCIA- HUARAZ'),
(119, '20107463705', '20107463705', 'CLINICA SAN PABLO S. A. C.', 'CALLE LA CONQUISTA 145 RES. URB. EL DERBY - SURCO.-LIMA'),
(120, '20107762010', '20107762010', 'FARMACIA MARTE CARPISA S.A.', 'DIEZ CANSECO Nº600 MIRAFLORES'),
(121, '20108088801', '20108088801', 'INST. DE ORTOPEDIA Y TRAUMATOLOGIA RICARDO PALMA S.A.C.', 'CAL. RICARDO J ANGULO NRO. 180 - SAN ISIDRO-LIMA'),
(122, '20108202786', '20108202786', 'MEDIVEN S.R.L.', 'MZ. \"B\" LOTE Nº58 URB. EL CUADRO CHACLACAYO'),
(123, '20108387034', '20108387034', 'ORGANIZACION PERUANA DE LUCHA CONTRA LA CEGUERA OPELUCE', 'AV AREQUIPA Nº1885 LINCE'),
(124, '20109950514', '20109950514', 'CENTENARIA BOTICA FRANCESA S.A.', 'JORGE BASADRE Nº485 SAN ISIDRO'),
(125, '20110534087', '20110534087', 'FARMACIA OFTALMOLOGIA-RICARDO PALMA S.R.L.', 'AV.JAVIER PRADO ESTE Nº1146 SAN ISIDRO'),
(126, '20110545798', '20110545798', 'EDIFICIOS Y CONST. SANTA PATRICIA S.A. (HOTEL SOL DE ORO)', 'AV. ALFREDO BENAVIDES NRO. 250 DPTO. 7 RES. MIRAFLORES LIMA - LIMA - M'),
(127, '20113110083', '20113110083', 'ADMINISTRADORA GENERAL DE CLINICAS S.R.L.', 'LOS OLIVOS Nº364 SAN ISIDRO'),
(128, '20117168574', '20117168574', 'EL INSTITUTO DE FERTILIDAD SA', 'CAL. CAYALTI NRO. 432 INT. PS 2 RES. MONTERRICO LIMA - SANTIAGO DE SURCO'),
(129, '20117357113', '20117357113', 'CONGREGACION HIJAS DE SAN CAMILO', 'AV. EL POLO NRO. 570 RES. URBANIZ POLO HUNT LIMA - LIMA - SANTIAGO DE SURCO'),
(130, '20118391188', '20118391188', 'AMIR DISTRIBUIDORA ZAIRA E.I.R.LTDA', 'RODOLFO ESPINAR Nº215 LA VICTORIA'),
(131, '20122843735', '20122843735', 'SERVICIOS MEDICOS Y AFINES S.C.R.L.', 'AV. JAVIER PRADO ESTE Nº1066 SAN ISIDRO'),
(132, '20123751664', '20123751664', 'PROVERSAL S.R.L.', 'JR. ALTO DE LA LUNA 765 BREÑA LIMA'),
(133, '20124058806', '20124058806', 'DISTRIBUIDORA ZAIRA E.I.R.L.', 'JR. PUNO Nº485 OF.303 LIMA'),
(134, '20126326069', '20126326069', 'OBRA DE SAN CAMILO (CLINICA SAN CAMILO)', 'JR. ANCASH NRO. 809 URB. BARRIOS ALTOS LIMA - LIMA - LIMA'),
(135, '20130297685', '20130297685', 'CLINICA ORTEGA SRL', 'AV. DANIEL A.CARRION NRO. 1124JUNIN - HUANCAYO - HUANCAYO'),
(136, '201312', '20131257750', 'Essalud Cap III Alfredo Piazza Roberts', 'Calle Las Lilas 223 (Urb San Eugenio)'),
(137, '20131257750', '20131257750', 'SEGURO SOCIAL DE SALUD ESSALUD', 'AV. DOMINGO CUETO 120 JESUS MARIA'),
(138, '20131367342', '20131367342', 'INSTITUTO NACIONAL DE ENFERMEDADES NEOPLASICAS', 'AV. ANGAMOS ESTE 2520 SURQUILLO'),
(139, '20131368403', '20131368403', 'INSTITUTO NACIONAL DE SALUD DEL NIÑO', 'AV. BRASIL Nº600 BREÑA'),
(140, '20131369124', '20131369124', 'EJERCITO PERUANO-HOSPITAL MILITAR CENTRAL', 'Av. Faustino Sánchez Carrión S/N , Jesus Maria, LIMA'),
(141, '20131373237', '20131373237', 'MINISTERIO DE SALUD', 'AV. SALAVERRY CDRA.08 JESUS MARIA'),
(142, '20131380012', '20131380012', 'INSTITUTO NACIONAL DE CIENCIAS NEUROLOGICAS', 'JR. ANCASH NRO. 1271 LIMA - LIMA - LIMA'),
(143, '20131380951', '20131380951', 'MUNICIPALIDAD METROPOLITANA DE LIMA', 'JR. DE LA UNION Nº300 CERCADO'),
(144, '20131914416', '20131914416', 'CLINICA PERUANO AMERICANA S.A.', 'AV. MANSICHE NRO. 810 URB. SANTA INES LA LIBERTAD - TRUJILLO '),
(145, '20134370417', '20134370417', 'CERVECERIA BACKUS & JOHNSTON', 'LIMA'),
(146, '20136096592', '20136096592', 'CLINICA SANCHEZ FERRER S.A.', 'CAL. LOS LAURELES N° 436 TRUJILLO'),
(147, '20136959469', '20136959469', ' INVERSIONES MARTEN S A', 'Av. Ricardo Elias Aparicio 141. Of.2. CC Arena Mol. Rinconada Alta. La Molina-LIMA'),
(148, '20137697450', '20137697450', 'INST DE GINECOLOGIA Y REPRODUCCION S A', 'AV. MANUEL OLGUIN NRO. 1047 URB. EL DERBY LIMA - SANTIAGO DE SURCO'),
(149, '20137729751', '20137729751', 'HOSPITAL NAC. DOCENTE MADRE NIÑO', 'AV. ALFONSO UGARTE Nº825'),
(150, '20137993776', '20137993776', 'LITOTRICIA RICARDO PALMA S.A.', 'AV. JAVIER PRADO ESTE SAN ISIDRO'),
(151, '20138100015', '20138100015', 'HOSPITAL DE EMERGENCIAS JOSE CASIMIRO ULLOA', 'AV. REPULICA DE PANAMA MIRAFLORES'),
(152, '20139776403', '20139776403', 'HOSPITAL DE EMERGENCIAS PEDIATRICAS', 'AV. GRAU Nº854 LA VICTORIA LIMA'),
(153, '20142880157', '20142880157', 'CASANOVA TRAUMATOLOGOS S.C.R.L.', 'AV. EL POLO Nº789 URB. EL DERBY MONTERRICO'),
(154, '20142920558', '20142920558', 'IMECON S.A.', 'CAR.AUTOP.PANAMERICANA SUR KM. 46 (PARCEL LAD.EST.MZ.GRUP.X,LOT.78,82,85)LIMA - PUNTA NEGRA'),
(155, '20143295878', '20143295878', 'FARMACIA DEZA S.A.', 'CONQUISTADORES Nº1144 SAN ISIDRO'),
(156, '20144329148', '20144329148', 'INSTITUTO MATERNO PERINATAL', 'JR. CANGALLO Nº416 BARRIOS ALTOS'),
(157, '20144364059', '20144364059', 'FUERZA AEREA DEL PERU-HOSPI', 'AV. ARAMBURU CUADRA 2 S/N MIRAFLORES LIMA'),
(158, '20144442629', '20144442629', 'HOGAR CLINICA SAN JUAN DE DIOS', 'AV. NICOLAS ARRIOLA Nº3250 SAN LUIS'),
(159, '20144804393', '20144804393', 'CLINICA MATERNO INFANTIL VIRGEN DEL ROSARIO', 'JR CASTILLA Nº976 MAGDALENA'),
(160, '20146008845', '20146008845', 'MUNICIPALIDAD PROVINCIAL DE HUANUCO', 'JR. GENERAL PRADO NRO. 750 HUANUCO - HUANUCO - HUANUCO'),
(161, '20148092282', '20148092282', 'UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS', 'CAL.GERMAN AMEZAGA NRO. 375 OTROS LIMA - LIMA - LIMA'),
(162, '20153219118', '20153219118', 'HOSPITAL NACIONAL HIPOLITO UNANUE', 'AV. CESAR VALLEJO Nº1390 EL AGUSTINO'),
(163, '20153408191', '20153408191', 'MARINA DE GUERRA DEL PERU', 'AV. VENEZUELA CDRA. 24 BELLAVISTA CALLAO'),
(164, '2015452871', '20154528971', 'HOSPITAL NACIONAL CAYETANO HEREDIA', 'AV. HONORIO DELGADO NRO. 262 LIMA - SAN MARTIN DE PORRES'),
(165, '20154528971', '20154528971', 'HOSPITAL NACIONAL CAYETANO HEREDIA', 'AV. HONORIO DELGADO NRO. 262 LIMA - SAN MARTIN DE PORRES'),
(166, '20154996991', '20154996991', 'HOSPITAL NACIONAL ARZOBISPO LOAYZA', 'AV. ALFONSO UGARTE NRO. 848 LIMA - LIMA - LIMA'),
(167, '20155196069', '20155196069', 'IRIMED EIRL', 'AV. RAFAEL ESCARDO NRO. 1149 DPTO. 101 - LIMA - SAN MIGUEL'),
(168, '20156176240', '20156176240', 'RED DE SALUD JAUJA', 'JR. SAN MARTIN NRO. 1153(COSTADO DE COMPAÑIA DE BOMBEROS)JUNIN - JAUJA - JAUJA'),
(169, '20160096447', '20160096447', 'SERVICIOS Y ASISTENCIA MEDICA S.A.C.', 'AV. GUARDIA CIVL Nº385 SAN BORJA'),
(170, '20160388570', '20160388570', 'HOSPITAL NACIONAL DOS DE MAYO', 'PQUE. HISTORIA DE LA MEDICINA PERUANA-AV. GRAU 13 LIMA-LIMA'),
(171, '20160436051', '20160436051', 'GALENOS ESPECIALISTAS S.A', 'JR. FLEMING NRO. 103 URB. SAN BORJA SUR LIMA - LIMA - SAN BORJA'),
(172, '20160588234', '20160588234', 'HOSPITAL SERGIO BERNALES', 'AV. TUPAC AMARU KM. 14.5 COMAS'),
(173, '20162041291', '20162041291', 'HOSPITAL DE APOYO MARIA AUXILIADORA', 'AV.MIGUEL IGLESIAS Nº968 SAN JUAN DE MIRAFLORES'),
(174, '20162197461', '20162197461', 'HOSP. HUACHO-HUAURA-OYON Y SERV BAS D SA', 'AV. JOSE A.ARAMBULO LA ROSA NRO. 221 (251 Y 271 -FRENTE URB. HUACHO) LIMA - HUAURA - HUACHO'),
(175, '20162406052', '20162406052', 'HOSPITAL REGIONAL DE ICA', 'AV. PROLOG. AYABACA COMATRANA NRO. S/N HOSPITAL REGIONAL DE ICA - ICA'),
(176, '20162580672', '20162580672', 'HOGAR CLINICA SAN JUAN DE DIOS -AREQUIPA', 'AV. DEL EJERCITO 1020 CAYMA-AREQUIPA'),
(177, '20163652201', '20163652201', 'CENTRO MEDICO MONTE CARMELO S.C.R.L', 'CAL. GOMEZ DE LA TORRE NRO. 119 URB. LA VICTORIA AREQUIPA - AREQUIPA'),
(178, '20163654246', '20163654246', 'GRA - HOSPITAL GOYENECHE', 'AV. GOYENECHE NRO. S/N (HOSPITAL GOYENECHE) AREQUIPA - AREQUIPA '),
(179, '20165465009', '20165465009', 'HOSPITAL CENTRAL DE SANIDAD PNP', 'AV. BRASIL CDRA. 26 S/N. JESUS MARIA'),
(180, '20167251294', '20167251294', 'GOBIERNO REGIONAL DE AREQUIPA-HOSPITAL III REGIONAL-HONORIO DELGADO', 'AV. ALCIDES CARRION NRO. 505 AREQUIPA - AREQUIPA - AREQUIPA'),
(181, '20169004359', '20169004359', 'UNIVERSIDAD NACIONAL DE INGENIERIA UNI', 'AV. TUPAC AMARU NRO. 210 (KM. 4.5 TUPAC AMARU)LIMA - LIMA - RIMAC'),
(182, '20171604355', '20171604355', 'AIS HOSPITAL SANTA ROSA', 'AV. BOLIVAR NRO. S/N (CUADRA OCHO ) LIMA - PUEBLO LIBRE'),
(183, '20171751145', '20171751145', 'F.B.C. MELGAR', 'CAL.CONSUELO NRO. 408 URB. CERCADO AREQUIPA - AREQUIPA - AREQUIPA'),
(184, '20172129821', '20172129821', 'INVERSIONES GENERALES SALOMON S.A. (VIRGEN MILAGROSA)', 'CAL. VALDEMAR MOSER NRO. 501 URB. AURORA ESTE- LIMA - SURQUILLO'),
(185, '20172772278', '20172772278', 'HOSPITAL REGIONAL DE AYACUCHO', 'AV. INDEPENDENCIA NRO. S/N URB. MARISCAL CACERES AYACUCHO - HUAMANGA - AYACUCHO'),
(186, '20173131934', '20173131934', 'GRUPO LAPAROSCOPICO RICARDO PALMA', 'AV. JAVIER PRADO ESTE Nº1038 SAN ISIDRO'),
(187, '20174169285', '20174169285', 'CLINICA SAN MARCOS', 'JR. HUARAZ Nº1425 BREÑA'),
(188, '20174943924', '20174943924', 'HOSPITAL NACIONAL DANIEL ALCIDES CARRION', 'AV. GUARDIA CHALACA NRO. 2176 BELLAVISTA CALLAO'),
(189, '20175508610', '20175508610', 'CENTRO MEDICO CLINICA SAN JUDAS TADEO SA', 'CAL. MANUEL RAYGADA NRO. 170 URB. EL CAMPILLO- LIMA - SAN MIGUEL'),
(190, '20177201716', '20177201716', 'RVB E.I.R.L.', 'LOS FAIQUES MZ \"G\" Nº17 SURCO'),
(191, '20177273547', '20177273547', 'INSTITUTO DE OJOS PRIMAVERA S.R.L.', 'PROLONGACION PRIMAVERA Nº821 CHACARILLA DEL ESTANQUE'),
(192, '20177560449', '20177560449', 'SOCIEDAD APOSTOLICA SANTA MARIA', 'AV. PEDRO MIOTA NRO. 313 - LIMA - SAN JUAN DE MIRAFLORES'),
(193, '20178922581', '20178922581', 'FONDO DE ASEGURAMIENTO EN SALUD DE LA POLICIA NACIONAL DEL PERU - SALUDPOL', 'PQ. ALFREDO MALDONADO NRO. 142 URB. CIRCOLO LIMA - LIMA - PUEBLO LIBRE (MAGDALENA VIEJA)'),
(194, '20180817680', '20180817680', '20180817680', 'Calle Tacna 120 San Juan I'),
(195, '20184599229', '20184599229', 'GALENO IMPORT S.A.', 'PABLO BERMUDEZ Nº177 OF.304 LIMA'),
(196, '20185665322', '20185665322', 'HOSPITAL DANIEL ALCIDES CARRION', 'AV. DANIEL A CARRION NRO. 1556 AVENIDA JUNIN - HUANCAYO - HUANCAYO'),
(197, '20185972179', '20185972179', 'FUTURO VISION E.I.R.L.', 'SAN BORJA SUR Nº536'),
(198, '20194365566', '20194365566', 'PROYECTOS INTEGRALES S.A.', 'ALAMEDA DEL CREPUSCULO 357 SURCO'),
(199, '20195513008', '20195513008', 'ASOCIACION STELLA MARIS', 'CAL. FRAY ANGELICO NRO. 450 SAN BORJA - LIMA'),
(200, '20197599899', '20197599899', 'CLINICA BELEN S.A.', 'CAL. SAN CRISTOBAL NRO. 267 URB. EL CHIPE PIURA - PIURA - PIURA'),
(201, '20202380621', '20202380621', 'MAPFRE PERU COMPAÑIA DE SEGUROS Y REASEGUROS S.A.', 'AV. 28 DE JULIO NRO. 873 URB. MIRAFLORES - LIMA'),
(202, '20203531550', '20203531550', 'HOSPITAL CARLOS LANFRANCO LA HOZ', 'AV. SAENZ PEÑA S/N CDRA. 06 NRO. S/N (FRENTE AL COLEGIO SANTÍSIMA TRINIDAD) LIMA - LIMA - PUENTE PIE'),
(203, '20204621242', '20204621242', 'TALMA SERVICIOS AEROPORTUARIOS', 'AV. ELMER FAUCETT 2879 - CALLAO'),
(204, '20206882469', '20206882469', 'CLUB CENTRO DEPORTIVO MUNICIPAL', 'CAL. MAZZOCHIO NRO. 181 URB. 28 DE JULIO - LIMA - BREÑA'),
(205, '20210784331', '20210784331', 'VIDEO CIRUGIA E.I.R.L.', 'AV. REPUBLICA DE PANAMA NRO. 6419 LIMA - LIMA - MIRAFLORES'),
(206, '20214389950', '20214389950', 'CLINICA QUIRURGICA GUADALUPE S.A.C', 'AV. HUAYLAS NRO. 285 LIMA - LIMA - CHORRILLOS'),
(207, '20216074018', '20216074018', 'RAQUIS S R L', 'CAL.J LARA NRO. 126 LIMA - LIMA - SAN ISIDRO'),
(208, '20220832016', '20220832016', 'CLINICA REAL LOS LAURELES SAC', 'CAL. ARMANDO CAMBANA NRO. 279 URB. LOS LAURELES CHORRILLOS'),
(209, '20230608688', '20230608688', 'INVERSIONES MEDICAS GALENO S.A.C.', 'AV. ECHENIQUE NRO. 641 HUACHO LIMA - HUAURA - HUACHO'),
(210, '20251267341', '20251267341', 'GIAL . MEDICA E.I.R.L.', 'AV. BRASIL Nº2610 OF.206 PUEBLO LIBRE'),
(211, '20251635324', '20251635324', 'CARDIOLOGIA S.C.R.L.', 'AV. GREGORIO ESCOBEDO 650 JESUS MARIA'),
(212, '20252395129', '20252395129', 'BOTICA TIC TAC 24 HORAS', 'AV. REPUBLICA DE PANAMA Nº6323 MIRAFLORES'),
(213, '20254247279', '20254247279', 'FARMACIA DOCTOR VAIZ E.I.R.L.', 'AV. VENEZUELA S/N BELLAVISTA CALLAO'),
(214, '20255460243', '20255460243', 'CLINICA GONZALES', 'IGNACIO MERINO Nª1884 LINCE'),
(215, '20255976215', '20255976215', 'CLINICA LA MISERICORDIA', 'PSJE. CERDAN DEL ANDA Nº276 URB.PLANETA LIMA'),
(216, '20261267111', '20261267111', 'CLÍNICA SAN MIGUEL ARCANGEL SOCIEDAD ANONIMA CERRADA CLINICA SAN MIGUEL ARCANGEL S.A.C.', 'CAL.LAS GARDENIAS NRO. 754 URB. LOS JAZMINES LIMA - LIMA - SAN JUAN DE LURIGANCHO'),
(217, '20262097227', '20262097227', 'BRAZINI RADIOLOGOS ASOCIADOS', 'AV. STA. CRUZ 367 MIRAFLORES LIMA'),
(218, '20262189181', '20262189181', 'INK JET SERVICE E.I.R.L.', 'AV MCAL ELOY URETA 535'),
(219, '20263368992', '20263368992', 'CYMED MEDICAL S.A.C.', 'PRESCOT Nº352 CDRA.15 AV. JAVIER PRADO ESTE SAN ISIDRO'),
(220, '20263805021', '20263805021', 'ESPECIALIDADES MEDICAS UNIVERSAL S.A.', 'JR. EDUARDO ORDONEZ NRO. 468 - LIMA - SAN BORJA'),
(221, '20266819286', '20266819286', 'ETU ARTROMED S.R.L.', 'AURELIO MIROQUESADA 1036 SAN ISIDRO LIMA'),
(222, '20269277735', '20269277735', 'D.R.S. MEDICAL', 'LUIS MONTERO 198 OF.201 TORRES DE LIMATAMBO SAN BORJA LIMA'),
(223, '20276211391', '20276211391', 'PROMASTER S.R.L.', 'BLOCK A-20 DPTO 102 URB. VICUS PIURA'),
(224, '20291193766', '20291193766', 'IBERMARPERU SRLTDA', 'AV. PAZ SOLDAN NRO. 170 INT. 901 LIMA - SAN ISIDRO-LIMA'),
(225, '20291839020', '20291839020', 'FULL SALUD S.A.', 'AV. BRASIL CDRA. 27 S/N JESUS MARIA'),
(226, '20295694794', '20295694794', 'CLINICA LAS AMERICAS S.A.C', 'AV. AREQUIPA NRO. 2685LIMA - LIMA - LINCE'),
(227, '20295699479', '20295699479', 'CLINICA LAS AMERICAS', 'AV. AREQUIPA Nº 2685 LINCE'),
(228, '20296880010', '20296880010', 'APOYO CARDIOVASCULAR S.R.LTDA', 'CALLE JOSE DEL LLANO ZAPATA 194 SAN ISIDRO'),
(229, '20297169603', '20297169603', 'RUC MODIFICADO CLINICA EL GOLF S.A.', 'AV. AURELIO MIROQUEZADA Nº1040 SAN ISIDRO'),
(230, '20298214459', '20298214459', 'HOGAR CLINICA MONTE SINAI S.A.', 'AV. GARCILAZO DE LA VEGA NRO. 1799LIMA - LIMA - LINCE'),
(231, '20300573682', '20300573682', 'VISUAL CARE S.A.', 'AV. PETIT THOUARS Nº1955 LINCE'),
(232, '20301163569', '20301163569', 'LIFE MEDICAL E.I.R.L.', 'PASAJE ISMAEL CASTILLO Nº1137 INT.11 LINCE'),
(233, '20303063766', '20303063766', 'UNIVERSIDAD ALAS PERUANAS S.A.', 'AV. SAN FELIPE NRO. 1109 LIMA - LIMA - JESUS MARIA'),
(234, '20303766848', '20303766848', 'MEDICINA AVANZADA S.A.', 'JR. FLORA TRISTAN NRO. 206 (ALT. CDRA 25 AV JAVIER PRADO OESTE) LIMA - LIMA - MAGDALENA DEL MAR'),
(235, '20312841712', '20312841712', 'EMP DE SERV TURISTICOS SAMANA HOTEL SRL', 'Av. Ejército 704, Yanahuara - Arequipa - Perú'),
(236, '20330025213', '20330025213', 'SUIZA LAB E.I.R.LTDA', 'ATAHUALPA Nº287 MIRAFLORES'),
(237, '20330835568', '20330835568', 'CLINICA QUIRURGICA SANTA MARIA S.A.', 'CAL. LAS AGUILAS NRO. 360 URB. LIMATAMBO SURQUILLO-LIMA'),
(238, '20332970411', '20332970411', 'PACIFICO COMPAÑIA DE SEGUROS Y REASEGUROS', 'AV. JUAN DE ARONA NRO. 830 (INTERIOR PISO 5,6,7,8) LIMA - LIMA - SAN ISIDRO'),
(239, '20333056306', '20333056306', 'MEDIRED LASER S.R.LTDA', 'AV. AURELIO MIROQUEZADA Nº1030 SAN ISIDRO'),
(240, '20333691664', '20333691664', 'SOCIEDAD MEDICA SRLTDA', 'AV. PETIT THOUARS NRO. 4650 INT. A-MIRAFLORES-LIMA'),
(241, '20334766714', '20334766714', 'INVERSIONES LA RIOJA S.A.', 'PARDO Y ALIAGA Nº699 SAN ISIDRO'),
(242, '20335495048', '20335495048', 'POWER SYSTEM INTERNATIONAL E.I.R.L.', 'JR. SAO PAULO Nº1375 SAN MARTIN DE PORRAS'),
(243, '20337889916', '20337889167', 'APSMA \"GOOD HOPE\" DE LA I A S D.', 'MALECON BALTA Nª95 MIRAFLORES'),
(244, '20340083882', '20340083882', 'MEDIC WORLD S.R.LTDA.', 'CALLE CARACAS Nº2463 JESUS MARIA LIMA'),
(245, '20346772396', '20346772396', 'CHAU CONTRATISTAS S.A.C.', 'AV. AVIACION NRO. 2477 INT. 2D LIMA - LIMA - SAN BORJA'),
(246, '20346802996', '20346802996', 'FARMACIA HOLLYWOOD S.A.', 'AV. ALFONSO UGARTE Nº994-B LIMA'),
(247, '20348134001', '20348134001', 'POLICLINICO SAN JUAN S.R.L.', 'JR. BOLIVAR NRO. 159 PROV. CONST. DEL CALLAO'),
(248, '20348622812', '20348622812', 'CLINICA LOS ANDES S.A.C.', 'CALLE ASUNCION 117 MIRAFLORES-LIMA'),
(249, '20353381521', '20353381521', 'ASOCIACION NSTRA. SEÑORA DE LA MISERICORDIA', 'MIGUEL PASCO 101 FERREÑAFE'),
(250, '20355267734', '20355267734', 'DISTRIBUIDORA DESERET EIRL', 'JR. BOLOGNESI NRO. 666 LA LIBERTAD - TRUJILLO - TRUJILLO'),
(251, '20356883749', '20356883749', 'TURISMO COSTA DEL SOL SA', 'AV. LORETO 649'),
(252, '20372321068', '20372321068', 'LIDERMED S.A.', 'CAL.LERIDA NRO. 268 URB. JAVIER PRADO IV ETAPA (ALTURA CUADRA 35 AV. CANADA)LIMA-SAN LUIS'),
(253, '20373322004', '20373322004', 'IMREPE E.I.R.L.', 'CALLE MACCHU PICCHU Nº199 EL AGUSTINO'),
(254, '20380486351', '20380486351', 'HOSPITAL SAN JOSE', 'LAS MAGNOLIAS Nª475 REYNOSO CALLAO'),
(255, '20380605890', '20380605890', 'CLINICA UNIVERSITARIA S.A.C.', 'JR. PAGADOR NRO. 137 URB. STA.LUZMILA COMAS'),
(256, '20381295975', '20381295975', 'BOTICA SABU S.R.L.', 'JR. CHACAS Nº32 BREÑA'),
(257, '20382612079', '20382612079', 'ALCIMAR S IMPORT E.I.R.L.', 'JR. CAHNCAY Nº621 OF.102 LIMA'),
(258, '20382748566', '20382748566', 'INTERSEGURO COMPAÑIA DE SEGUROS S.A.', 'AV. FELIPE PARDO Y ALIAGA NRO. 634 LIMA - LIMA - SAN ISIDRO'),
(259, '20387397940', '20387397940', 'TRAUMATISM SERVICE', 'JR. DARIO VALDIZAN 119 SAN MARTIN'),
(260, '20390181281', '20390181281', 'EXILASER S.A.C.', 'AV. EL PINAR Nº198 CHACARILLA'),
(261, '20390625007', '20390625007', 'CHUBB PERU S.A. COMPAÑIA DE SEGUROS Y REASEGUROS', 'CAL.AMADOR MERINO REYNA NRO. 267 INT. 402 (EDIFICIO PARQUE PLAZA)LIMA - LIMA - SAN ISIDRO'),
(262, '20396318734', '20396318734', 'CLINICA DE LA MUJER', 'Avenida San Borja Sur 285, San Borja 15036'),
(263, '20401882741', '20401882741', 'CLINICA SANTO DOMINGO S.C.R.L.TDA.', 'AV. FRANCISCO SOLANO NRO. 274 (PSJE. MARISCAL CASTILLA 186-SAN CARLOS)JUNIN - HUANCAYO - HUANCAYO'),
(264, '20414955020', '20414955020', 'RIMAC S.A. ENTIDAD PRESTADORA DE SALUD', 'AV. PASEO DE LA REPUBLICA NRO. 3505 INT. P-11LIMA - SAN ISIDRO'),
(265, '20417778773', '20417778773', 'ARTROMED E.I.R.L.', 'AURELIO MIROQUESADA Nº1050'),
(266, '20420233290', '20420233290', 'MEDIESTETIC S.R.L.', 'AV. BRASIL Nº1247 JESUS MARIA'),
(267, '20423112787', '20423112787', 'ORTHOCEF S.R.L.', 'CAL. UNO NRO. 170 SAN ISIDRO- LIMA'),
(268, '20428080671', '20428080671', 'NUESTRA SEÑORA DEL SAGRADO CORAZON', 'PASO DE LOS ANDES Nº923 PUEBLO LIBRE-LIMA'),
(269, '20428674201', '20428674201', 'ONCOLOGIA S.A.C.', 'AV. PABLO CARRIQUIRRY NRO. 115 URB. EL PALOMAR (COSTADO CLINICA RICARDO PALMA) LIMA - LIMA - SAN ISI'),
(270, '20431441111', '20431441111', 'TRAUMACENTER S.R.L.', 'CAL. TALARA NRO. 275 URB. FUNDO OYAGUE- LIMA - JESUS MARIA'),
(271, '20437274518', '20437274518', 'GOBIERNO REGIONAL LAMBAYEQUE HOSPITAL REGIONAL DOCENTE LAS MERCEDES', 'AV. LUIS GONZALES NRO. 635 LAMBAYEQUE - CHICLAYO - CHICLAYO'),
(272, '20447367727', '20447367727', 'MUNICIPALIDAD DISTRITAL DE PILLCO MARCA', 'AV. JUAN VELAZCO ALVARADO NRO. 1650 URB. CAYHUAYNA HUANUCO - HUANUCO - PILLCO MARCA'),
(273, '20454073143', '20454073143', 'LA POSITIVA VIDA SEGUROS Y REASEGUROS', 'CAL.FRANCISCO MASIAS NRO. 370 LIMA - LIMA - SAN ISIDRO'),
(274, '20454135432', '20454135432', 'CLINICA VALLESUR S.A.', 'AV. LA SALLE NRO. 116 AREQUIPA - AREQUIPA - AREQUIPA'),
(275, '20454291051', '20454291051', 'AFOCAT - REGION AREQUIPA', 'CAL. TRAVADA NRO. 108 IV CENTENARIO AREQUIPA - AREQUIPA -'),
(276, '20454851618', '20454851618', 'GALENO I.E.M. S.A.C.', 'AV. BOLOGNESI NRO. 134 YANAHUARA-AREQUIPA'),
(277, '20455093890', '20455093890', 'MEDICAL CARE S.A.C. (CLINICA JESUS MARIA)', 'AV. PIZARRO NRO. 164 (FRENTE RESERVORIO DE GUARDIA CIVIL) AREQUIPA - PAUCARPATA'),
(278, '20455476632', '20455476632', 'ANUBIS BG CONSTRUCCIONES EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', 'MZA. A LOTE. 10 URB. EL ROSARIO II AREQUIPA - AREQUIPA - CERRO COLORADO'),
(279, '20459074229', '20459074229', 'VALTEMSA E.I.R.L.', 'ALCANFORES Nº832 MIRAFLORES'),
(280, '20460345546', '20460345546', 'NEGOCIOS E INVERSIONES FADIMED E.I.R.L.', 'GUSTAVO P.MUZZO Nº198 URB JORGE CHAVEZ CALLAO'),
(281, '20461665820', '20461665820', 'SERVICIOS DE SALUD MONTEFIORI SAC', 'AV. SEPARADORA INDUSTRIAL NRO. 1820 URB. LOS CACTUS (ALT. AV SEPARAD.INDUST Y AV.LOS FRUTALES) LIMA '),
(282, '20464259440', '20464259440', 'CENTRO MEDICO AVENDAñO S.A.C.', 'CAL.LEONIDAS AVENDAñO NRO. 116 (ALT.CDRA. 11-12 DE AV. REDUCTO)LIMA - MIRAFLORES'),
(283, '20470228190', '20470228190', 'FRANK MEDICA S.A.C', 'AV. IGNACIO MERINO NRO. 1855 INT. 203- LINCE'),
(284, '20471864987', '20471864987', 'FEDERACION PERUANA DE TAEKWONDO', 'ESTADIO NACIONAL PUERTA 14 STA. BEATRIZ LIMA'),
(285, '20477311271', '20477311271', 'COMPAÑIA MINERA RIO CHICAMA S.A.C.', 'CAL. EL PALMAR NRO. 115 URB. EL GOLF LA LIBERTAD - TRUJILLO'),
(286, '20477983708', '20477983708', 'INVERCONSULT S.A.', 'CAL. CARLOS GONZALES 250-260 SAN MIGUEL'),
(287, '20480082673', '20480082673', 'HOSPITAL PRIVADO JUAN PABLO II SOCIEDAD ANONIMA CERRADA', 'AV. MIGUEL GRAU NRO. 1461 LAMBAYEQUE - CHICLAYO - LA VICTORIA'),
(288, '20480280807', '20480280807', 'CORPORACION YAHIRO S.A.C.', 'CAL. FRANCISCO CABRERA NRO.145 CERCADO CHICLAYO - LAMBAYEQUE - CHICLAYO'),
(289, '20481441367', '20481441367', 'BOTICA CLINICA SAN ANTONIO SAC', 'AV. LARCO NRO. 630 URB. SAN ANDRES LA LIBERTAD - TRUJILLO - TRUJILLO'),
(290, '20481701709', '20481701709', 'CLINICA SAN ANTONIO S.A.C', 'AV. VICTOR LARCO NRO. 630 INT. 1 URB. SAN ANDRES LA LIBERTAD - TRUJILLO '),
(291, '20487911586', '20487911586', 'HOSPITAL REGIONAL LAMBAYEQUE', 'AV. PANAM NORTE Y VIA DE EVIT NRO. S/N (PANAMERICANA NORTE Y VIA DE EVITAMIENTO) LAMBAYEQUE - CHICLA'),
(292, '20492080811', '20492080811', 'IAFAS DE LA FUERZA AÉREA DEL PERÚ (FOSFAP)', 'AV. ANDRES ARAMBURU NRO. 200 URB. MIRAFLORES (2DO PISO-INSTAL. DE HOSPITAL CENTRAL FAP) MIRAFLORES'),
(293, '20492220176', '20492220176', 'SEMSA E.I.R.L.', 'CAL. FORTUNATO QUEZADA NRO. 160 DPTO. 102 BLOCK B1 LIMA - SAN MIGUEL'),
(294, '20492633683', '20492633683', 'LOGISTICA INTERNACIONAL ADUANERA S.A.C.', 'Avenida Japón - Mz. C Lt. 14, Urb. Los Jazmines'),
(295, '20498635432', '20498635432', 'TECNOLOGIAS MEDICAS AREQUIPA S.A.-TECNOMEDICA S.A.', 'AV. EMMEL NRO. 125 URB. JARDIN AREQUIPA - AREQUIPA - YANAHUARA'),
(296, '205', '20131257750', 'SEGURO SOCIAL DE SALUD - ESSALUD RED ASISTENCIAL JULIACA', 'AV.JOSE SANTOS CHOCANO S/N URB. LA CAPILLA JULIACA - SAN ROMAN'),
(297, '20501781291', '20501781291', 'MEDIC SER S.A.C. (AUNA CLINICA DELGADO)', 'AV. REPUBLICA DE PANAMA NRO. 4575 URB. SURQUILLO (PISO 6 - A LA ALTURA DE MAESTRO) LIMA - SUR'),
(298, '20502105613', '20502105613', 'SERVICIOS RIGAL S.A.C.', 'AV. PASEO DE LA REPUBLICA NRO. 4257 URB. LIMATAMBO (A 1/2 CDA. DEL MINIST. DE LA PRESIDENCIA) LIMA -'),
(299, '20503867592', '20503867592', 'HOSPITAL MILITAR CENTRAL', 'AV. PERSHING NRO. S/N LIMA - LIMA - JESUS MARIA'),
(300, '20504086390', '20504086390', 'PROMEDON S.A', 'JR . MANUEL VILDOSO 820-SANTA CATALINA'),
(301, '20504872531', '20504872531', ' INSTITUTO MEDICO GERIATRICO SAGRADA FAMI LIA S.A.C.', 'AV. HONORIO DELGADO NRO. 141 URB. INGENIERÌA SAN MARTIN DE PORRES-LIMA'),
(302, '20504942172', '20504942172', 'ESPEJOS GRAF SAC', 'JR. BERNARDO ALCEDO N°570- LINCE'),
(303, '20505018509', '20505018509', 'CLINICA SAN GABRIEL S.A.C.', 'AV. LA MARINA 2955 - SAN MIGUEL-LIMA'),
(304, '20505188927', '20505188927', 'ADVANCE SUPPORT ANESTESIOLOGY S.A.C.', 'CAL. LAS VIÑAS MZA. W LOTE. 02 URB. ASOCIACION VILLA RICA LIMA - CHACLACAYO'),
(305, '20505716702', '20505716702', 'CLINICA DEL NORTE S.A.C.', 'MZA. B LOTE. 12 COO. VIV CAJABAMBA (CUADRA 38 AV UNIVERSITARIA) LIMA - LOS OLIVOS'),
(306, '20506248036', '20506248036', 'ALKHOFAR SOCIEDAD ANONIMA CERRADA', 'AV. GERARDO UNGER NRO. 691 URB. INGENIERIA (ALTURA PUERTA 5 DE LA UNI)LIMA - LIMA - SAN MARTIN DE PO'),
(307, '20507151320', '20507151320', 'HOSPITAL JOSE AGURTO TELLO DE CHOSICA', 'JR. AREQUIPA NRO. 214 (ALTURA PUENTE COLGANTE DE CHOSICA) LIMA - LIMA - LURIGANCHO'),
(308, '20507264108', '20507264108', 'SISTEMAS DE ADMINISTRACION HOSPITALARIA S.A.', 'AV. AURELIO MIROQUEZADA 1030-SAN ISIDRO-LIMA'),
(309, '20507665862', '20507665862', 'TRANSPORTES NAYLAMP EIRL', 'CAL.PROLONGACION HUAMANGA NRO. 1249 - LIMA - LA VICTORIA'),
(310, '20507689290', '20507689290', 'OSTEOMEDIC E.I.R.L.', 'JR. MELLO FRANCO NRO. 372 DPTO. 208 (ALT CDRA 14 AV BRASIL) LIMA - JESUS MARIA'),
(311, '20508181796', '20508181796', 'SERVICIOS MEDICOS INTEGRALES FAMISALUD S.A.C.', 'AV. AREQUIPA NRO. 4067 LIMA - LIMA - MIRAFLORES'),
(312, '20508401150', '20508401150', 'CIRMAX SAN JUAN DE DIOS S.A.C.', 'CAL.BOLIVAR NRO. 221 INT. 11 (PISO 1 ALT. CDRA. 4 AV. BENAVIDES)LIMA -MIRAFLORES'),
(313, '20508650451', '20508650451', 'IAFAS DEL EJERCITO DEL PERU (FOSPEME)', 'AV. PERSHING NRO. S/N (DENTRO HOSPITAL MILITAR PTA.EMERGENCIA)LIMA - JESUS MARIA'),
(314, '20508790971', '20508790971', 'CLINICA NUEVO SAN JUAN S.A.C.', 'AV. PROCERES DE LA INDEPENDENCIA NRO 1764 URB FLORES SAN JUAN DE LURIGANCHO'),
(315, '20509137910', '20509137910', 'CUERPO MEDICO DEL HOSPITAL MARIA AUXILIADORA', 'AV. MIGUEL IGLESIAS NRO. SN (EN EL HOSP MARIA AUXILIADORA) LIMA - SAN JUAN DE MIRAFLORES'),
(316, '20509167746', '20509167746', 'ORPROTEC S.A.C', 'AV. SANTA CATALINA 375-LA VICTORIA-LIMA'),
(317, '20509510149', '20509510149', 'SISTEMA METROPOLITANO DE LA SOLIDARIDAD', 'Av. San borja sur 285 San borja'),
(318, '20509900877', '20509900877', 'CHEMICAL PROCESSES INDUSTRIES SAC', 'CAL.A MZA. B LOTE. 9 Z.I. PRO 9NO SECTOR (1.5 CDRA ANTES DE REV. TECNICAS LIDERCON)LIMA - SAN'),
(319, '20510137273', '20510137273', 'ARTROMED E.I.R.L', 'R. JOSE BALTA NRO. 124 SALAMANCA ATE-LIMA'),
(320, '20511489084', '20511489084', 'CENTRO DE INVESTIGACION Y ATENCION CARDIOVASCULAR SOCIEDAD ANONIMA CERRADA', 'AV. SALAVERRY NRO. 2665 (AL FRENTE DE LA EMBAJADA JAPON) LIMA - LIMA - SAN ISIDRO'),
(321, '20511559635', '20511559635', 'SIDERURGICA MECANIZADA SOCIEDAD ANONIMA CERRADA', 'CAL.SAN IGNACIO MZA. E LOTE. 8 URB. SANTA MARTHA (PASANDO LA RIEL DEL TREN) LIMA - ATE'),
(322, '20512311122', '20512311122', 'UNIDAD EJECUTORA HOSPITAL SAN JUAN DE LURIGANCHO', 'PROLOG. AV.CANTO GRANDE NRO. S/N (ALT. DEL PARADERO 11) LIMA - LIMA - SAN JUAN DE LURIGANCHO'),
(323, '20512337865', '20512337865', 'MAYFARMA E.I.R.L.', 'JR. PASTAZA NRO. 150 (ALT. CUADRA 13 Y 14 AV. VENEZUELA)LIMA - BREÑA'),
(324, '20512864644', '20512864644', 'CONDUTO PERU S.A.C.', 'CAL. LAS GAVIOTAS NRO. 184 URB. LIMATAMBO LIMA - LIMA - SURQUILLO'),
(325, '20512867741', '20512867741', 'CLINICA MEDICA ZEGARRA S.A.C.', 'CAL.JOSE GABRIEL AGUILAR NRO. 200 URB. SAN AGUSTIN ET. UNO LIMA - LIMA - COMAS'),
(326, '2051290142', '20515290142', 'CLINICA MEDICA CAYETANO HEREDIA S.A', 'AV. HONORIO DELGADO NRO. 370 URB. INGENIERIA-LIMA-SAN MARTIN DE PORRES'),
(327, '20513328819', '20513328819', 'BNP PARIBAS CARDIF S.A. COMPAÑIA DE SEGUROS Y REASEGUROS', 'AV. CANAVAL Y MOREYRA NRO. 380 (TORRE SIGLO XXI - INT. 1101 - 1102) LIMA - SAN ISIDRO'),
(328, '20513706198', '20513706198', 'PROPACK', 'AV. MATERIALES NRO. 3045 '),
(329, '20514116688', '20514116688', 'ORTHO SUPLY SOCIEDAD ANONIMA CERRADA', 'CAL.LOMA DE LOS SUSPIROS NRO. 312 DPTO. 301 URB. PROLONGACION BENVIDES - LIMA - SANTIAGO DE SURCO'),
(330, '20514189723', '20514189723', 'GRUPO MEDICO HIGUERETA S.A.C.', 'AV. BENAVIDES NRO. 2949 URB. ALEXANDER VON HUMBOLT (BENAVIDES 2951) LIMA - MIRAFLORES'),
(331, '20514724386', '20514724386', 'LD OHMYPERU E.I.R.L.', 'AV. AGUSTIN DE LA ROSA TORO NRO. 1165- LIMA - SAN BORJA'),
(332, '20514772194', '20514772194', 'HOSPITAL MUNICIPAL LOS OLIVOS', 'AV. NARANJAL NRO. 318 URB. INDUSTRIAL NARANJAL- LIMA - LOS OLIVOS'),
(333, '20514805033', '20514805033', 'SOLOIMAGEN E.I.R.L.', 'CAL.LAS GOLONDRINAS NRO. 340 INT. 603 -LIMA - SAN ISIDRO'),
(334, '20514964778', '20514964778', 'INSTITUTO NACIONAL DE ENFERMEDADES NEOPLASICAS', 'AV. ANGAMOS ESTE NRO. 2520 URB. CALERA DE LA MERCED- LIMA - SURQU'),
(335, '20515129872', '20515129872', 'ARTROSALUD S.A.C', 'CAL. BRUSELAS NRO. 290 URB. LOS SAUCES-SURQUILLO-LIMA'),
(336, '20515333216', '20515333216', 'CLINICA SUDAMERICANA S. A. C', 'AV. PACASMAYO NRO. 4929 URB. JORGE CHAVEZ ET.I CALLAO'),
(337, '20515468499', '20515468499', 'DETECTA CENTRO ONCOLOGICO S.A.C.', 'AV. ANGAMOS ESTE MZA. F-12 LOTE. 72 URB. PAPA JUAN XXIII LIMA - LIMA - SAN BORJA'),
(338, '20515490311', '20515490311', 'SERVICIOS MEDICOS REPROMEDIC S.AC.', 'JR. GNRL. MAXIMO ABRIL NRO. 585 (ESPALDA DEL MINISTERIO DE TRABAJOLIMA - JESUS MARIA'),
(339, '20515727581', '20515727851', 'FUNDACION REV. BERNARD BYRNE,MARYKNOLL MISSIONARY', 'AV. JAVIER PRADO NRO. 2927 INT. 201 LIMA - SAN BORJA'),
(340, '20515955560', '20515955560', 'MEDISPORT SAC', 'JR. DOMINGO ELIAS NRO. 252 (ESPALDA POLICLINICO ANGAMOS)LIMA - MIRAFLORES'),
(341, '20516314398', '20516314398', 'AUTOSEGURO - ASOCIACION FONDO CONTRA ACCIDENTES DE TRANSITO-AFOCAT', 'CAL. RAMON DAGNINO NRO. 201 JESUS MARIA'),
(342, '20516579189', '20516579189', 'DIAL SALUD S.A.C. (G´STAR)', 'CALLE LOS AMANCAES 240 URB LOS JARDINES DE VIRU- BELLAVISTA - CALLAO'),
(343, '20516629038', '20516629038', 'TRAUMA SPORT S.A.C.', 'AV. JAVIER PRADO ESTE 1010 '),
(344, '20517068544', '20517068544', 'TRAUMATOLOGIA Y ORTOPEDIA AYBAR & AS S.A.C.', 'AV. SAN FELIPE NRO. 142 URB. FUNDO OYAGUE LIMA - LIMA - JESUS MARIA'),
(345, '20517207331', '20517207331', 'PROTECTA S.A. COMPAÑIA DE SEGUROS', 'AV. DOMINGO ORUE NRO. 165 LIMA - LIMA - SURQUILLO'),
(346, '20517482472', '20517482472', 'CORPORACION LIDER PERU S.A.', 'CAL.LEONCIO PRADO NRO. 446 LIMA - LIMA - SURQUILLO'),
(347, '20517623041', '20517623041', 'J Y J REPRESENTACIONES MEDICAS E.I.R.L.', 'TACNA NRO. 3273(ALT. CDRA. 32 DE AV. PERU A LA IZQUIERDA)LIMA - SAN MARTIN DE PORRES'),
(348, '20517737560', '20517737560', 'CLINICA SANTA MARIA DEL SUR SOCIEDAD ANONIMA CERRADA', 'AV. BELISARIO SUAREZ NRO. 998- LIMA - SAN JUAN DE MIRAFLORES'),
(349, '20517738701', '20517738701', 'CLINICA JESUS DEL NORTE', 'AV. CARLOS IZAGUIRRE 153-INDEPENDENCIA'),
(350, '20518133595', '20518133595', 'MEDICOS ASOCIADOS CHAVEZ Y CHAVEZ S.CIVIL DE R.L.', 'CAL. BATALLON TARMA NRO. 585 DPTO. 303 SANTIAGO DE SURCO-LIMA'),
(351, '20518218582', '20518218582', 'TECNOLOGIA E IMAGENES MEDICAS SAC', 'LAS ÁGUILAS NRO. 378 URB. LIMATAMBO - SURQUILLO-LIMA'),
(352, '20518560230', '20518560230', 'INSTITUTO PERUANO DE INVESTIGACION EN CIENCIAS MEDICAS S.A.C. ', 'AV. DE LOS PATRIOTAS NRO. 144 URB. MARANGA-SAN MIGUEL LIMA'),
(353, '20518754271', '20518754271', 'MEDPLUS S.A.C.', 'JR. ALMUDENA NRO. 226 INT. 201 SAN LUIS -LIMA'),
(354, '20518903455', '20518903455', 'JRL SAC', 'CAL. LAS CEREZAS NRO. 101 URB. VALDIVIEZO SAN MARTIN DE PORRES-LIMA'),
(355, '20519143683', '20519143683', 'MEGASALUD NARANJAL SAC', 'AV. NARANJAL NRO. 1582 URB. EL PARQUE NARANJAL ET 1 LIMA - LIMA - LOS OLIVOS'),
(356, '20519693080', '20519693080', 'MINING COMPANY SERVICES S.A.C', 'CAL.ZEPITA NRO. 533 URB. CENTRO URBANO DE ILO MOQUEGUA - ILO'),
(357, '20522706184', '20522706184', 'M & ST SALUD S.A.C', 'AV. DEFENSORES DEL MORRO-EX H NRO. 1201 URB. SAN JUDAS TADEO LIMA - CHORRILLOS'),
(358, '20522918874', '20522918874', 'LUPHER SRL', 'CAL.OCTAVIO MENA NRO. 220 URB. JAVIER PRADO LIMA - LIMA - SAN BORJA'),
(359, '20523470761', '20523470761', 'SANITAS PERU S.A. - EPS', 'AV. RICARDO RIVERA NAVARRETE NRO. 543 URB. JARDIN LIMA - LIMA - SAN ISIDRO'),
(360, '20523788427', '20523788427', 'PIRPALAP SOCIEDAD ANONIMA CERRADA', 'AV. EMANCIPACION NRO. 791 (FARMACIA UNIVERSAL - CERCADO DE LIMA) LIMA '),
(361, '20524372372', '20524372372', 'CENTRO MEDICO SANTA ELIZABETH S.R.L.', 'MZA. B1 LOTE. 38 LA HUAYRONA LIMA - LIMA - SAN JUAN DE LURIGANCHO'),
(362, '20527004269', '20527004269', 'HOSPITAL GUILLERMO DIAZ DE LA VEGA ABANCAY', 'AV. DANIEL A CARRIóN NRO. S/N APURIMAC - ABANCAY '),
(363, '20527956057', '20527956057', 'MÉDICOS ASOCIADOS CUSCO S.A.', 'AV. DEL PINAR # 180 INT 304 URB. CHACARILLA DEL ESTANQUE LIMA-LIMA-SANTIAGO DE SURCO'),
(364, '20532658986', '20532658986', 'HOSPITAL REGIONAL DE MOQUEGUA', 'AV. SAN ANTONIO NORTE NRO. SN C.P. SAN ANTONIO MOQUEGUA - MARISCAL NIETO - MOQUEGUA'),
(365, '20533243046', '20533243046', 'TRAUMA FER EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA - TRAUMA FER E.I.R.L.', 'PROLONGACION BLONDELL NRO. 415 (FRENTE A LA CLINICA PROMEDIC)TACNA - TACNA '),
(366, '20535026018', '20535026018', 'INV MINERA REY SALOMON S.R.L.', 'JR. BOLIVIA NRO. 340 URB. LAS AMERICAS (EN HOSPEDAJE BOLIVAR 3ER P F ALEGRIA) APURIMAC - ABANCAY'),
(367, '20535637599', '20535637599', 'CALLAO SALUD S.A.C.', 'Av. Argentina N° 3525 Callao República del Perú -Almacén Central'),
(368, '20535638056', '20535638056', 'VILLA MARIA DEL TRIUNFO SALUD S.A.C.', 'CAL. CHINCHON NRO. 1018 (SEXTO PISO) LIMA - LIMA - SAN ISIDRO'),
(369, '20535660493', '20535660493', 'GUTIERREZ YOZA SOLUCIONES TRAUMATOLOGICAS EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', 'AV. MANUEL CIPRIANO DULANTO NRO. 1911 DPTO. 1303 LIMA - PUEBLO LIBRE (MAGDALENA VIEJA)'),
(370, '20535772372', '20535772372', 'MONTEVIE SOCIEDAD ANONIMA CERRADA - MONTEVIE S.A.C.', 'CAL.JOSE MORALES ALPACA NRO. 251 (ALT. CDRA 27 DE AV. BRASIL) LIMA - LIMA - PUEBLO LIBRE (MAGDALENA'),
(371, '20536110799', '20536110799', 'ORTOSALUD E.I.R.L.', 'CAL.PACHACUTEC NRO. 901 DPTO. 902 LIMA - JESUS MARIA'),
(372, '20536156608', '20536156608', 'GRAFICA COLOR Y SERVICIOS GENERALES E.I.R.L.', 'AV. REPUBLICA DEL PORTUGAL NRO. 322 (ESPALDA DE MIGRACIONES)LIMA - LIMA - BREÑA'),
(373, '20536598457', '20536598457', 'CORPORACION TESEPACK SAC', 'JR. JULIO CALERO MZA. A LOTE. 12 URB. CO.VI.TEXTIL ALGODONERA49 '),
(374, '20536863541', '20536863541', 'SEMEQUIV S.A.C.-CLINICA VIRGEN DE LAS MERCEDES', 'AV. FAUSTINO SANCHEZ CARRION NRO. S/N- LIMA - JESUS MARIA'),
(375, '20537133351', '20537133351', 'ARTEC SALUD E.I.R.L.', 'CAL.LOS CORALES NRO. 143 INT. 501B URB. BENJAMIN DOIG PROV. CONST. DEL CALLAO - PROV. CONST. DEL CAL'),
(376, '20537489295', '20537489295', 'CLINICA LA LUZ S.A.C.', 'PJ. LIZARDO EYZAGUIRRE NRO. 368 URB. GRUMETE MEDINA ATE-LIMA'),
(377, '20537966999', '20537966999', 'SINDICATO DE TOREROS DEL PERU', 'AV. AREQUIPA NRO. 340 INT. 206 URB. SANTA BEATRIZ LIMA - LIMA - LIMA'),
(378, '20538141667', '20538141667', 'CORPORACION RACMAT S.A.C.', 'PASTAZA NRO. 154 LIMA - LIMA - BREÑA'),
(379, '20543366839', '20543366839', 'NUTRAAMED S.A.C.', 'AV. RICARDO PALMA NRO. 940 URB. SAN JUAQUIN PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - BELL'),
(380, '20544206410', '20544206410', 'CLINICA LA MERCED S.A.C.', 'CAL.LA CONQUISTA NRO. 155 URB. EL DERBY LIMA - SANTIAGO DE SURCO'),
(381, '20544257910', '20544257910', 'CORPORACION ALPE Y ASOCIADOS SOCIEDAD ANONIMA CERRADA', 'AV. CIPRIANO DULANTO NRO. 155 CERCADO LIMA - LIMA - PUEBLO LIBRE (MAGDALENA VIEJA)'),
(382, '20544704444', '20544704444', 'DR HUARCAYA EN LESIONES DEPORTIVA SOCIEDAD ANONIMA CERRADA', 'AV. CANADA NRO. 3527 INT. 201 LIMA - SAN LUIS'),
(383, '20545396069', '20545396069', 'CLINICAS MAISON DE SANTE S.A.', 'JR. MIGUEL ALJOVIN NRO. 208 LIMA - LIMA - LIMA'),
(384, '20545545919', '20545545919', 'INSTITUTO NEURO CARDIOVASCULAR DE LAS AMERICAS SAC (CLINICA INCA)', 'AV. 28 DE JULIO NRO. 1331 URB. SAN ANTONIO- LIMA - MIRAFLORES'),
(385, '20546292658', '20546292658', 'GSP TRUJILLO S.A.C.', 'CAL.FRANCISCO BOLOGNESI NRO. 561 URB. CENTRO HISTORICO LA LIBERTAD - TRUJILLO'),
(386, '20546424317', '20546424317', 'NEOMEDICA E.I.R.L.', 'AV. LARCO NRO. 743 INT. 902 LIMA - MIRAFLORES'),
(387, '20546440355', '20546440355', 'IN GRAFICA CORPORATIVA SAC', 'CALLE DOÑA MARGARITA 158 URB. LOS ROSALES SURCO'),
(388, '20546884318', '20546884318', 'CORPORACION CLAVE 1 S.A.C.', 'J PRADO NRO. 210 DPTO. B (PISO 8)LIMA - LIMA - SAN ISIDRO'),
(389, '20546889972', '20546889972', 'AFRODITA DESIGN S.A.C', 'AV. JORGE CHAVEZ MZA. K LOTE. 24 (SECTOR 6 GRUPO 5) LIMA - VILLA EL SALVADOR'),
(390, '20547498489', '20547498489', 'RED DE SALUD CLINICA S.A.C. - RED SALUD CLINICA S.A.C.', 'AV. AREQUIPA NRO. 2469LIMA - LIMA - LINCE'),
(391, '20547904657', '20547904657', 'LOVON ARBAYZA S.CIVIL DE R.L.', 'CAL.BRUSELAS NRO. 290 URB. LOS SAUCES- LIMA - SURQUILLO'),
(392, '20548568065', '20548568065', 'CLINICA DE MUJERES S.A.C.', 'AV. FRANCISCO MARIATEGUI NRO. 1418 URB. FUNDO OYAGUE LIMA - LIMA - JESUS MARIA'),
(393, '20549318160', '20549318160', 'COTILLO MEDICAL HEALTH E.I.R.L.', 'AV. FRANCISCO J. MARIATEGUI NRO. 1290 JESUS MARIA-LIMA'),
(394, '20550146984', '20550146984', 'ALASER PERU E.I.R.L.', 'CAL.MORISOT NRO. 141 URB. SAN BORJA (CDRA.25 DE AV. AVIACION Y AV.LAS ARTES)LIMA'),
(395, '20550151392', '20550151392', 'SPORTRAUMA GUZMAN S.CIVIL DE R.L.', 'PQ. SAN MARTIN NRO. 270 INT. 1003 PUEBLO LIBRE'),
(396, '20551461441', '20551461441', 'ATENEO TRAUMA REHAB E.I.R.L.', 'LOS EUCALIPTOS NRO. 612 ALTO FICUS LIMA - LIMA - SANTA ANITA'),
(397, '20551635458', '20551635458', 'SEMAS TRAUMA E.I.R.L.', 'CAL. M. RADIGUETTI NRO. 236 URB. S JOSE PROV. CONST. DEL CALLAO - BELLAVISTA');
INSERT INTO `maecli` (`id`, `codigo`, `ruc`, `razon_social`, `direccion`) VALUES
(398, '20552196725', '20552196725', 'INSTITUTO NACIONAL DE SALUD DEL NIÑO-SAN BORJA', 'AV. AGUSTIN DE LA ROSA NRO. 1399 URB. JACARANDA II - LIMA - SAN BO'),
(399, '20552670494', '20552670494', 'GER MEDICAL ESTUDIOS Y SERVICIOS MEDICOS ESPECIALIZADOS E.I.R.L.', 'JR. CAPAC YUPANQUI NRO. 1505DPTO. 203 LIMA - LINCE'),
(400, '20555390492', '20555390492', 'LURESMED S.A.C.', 'HAITI NRO. 135 LOS LAURELES LIMA - LIMA - CHORRILLOS'),
(401, '20555425385', '20555425385', 'TRAUMADEPOR S.A.C', 'AV. PETIT THOUARS NRO. 4650 INT. A (PISO 1) LIMA - MIRAFLORES'),
(402, '20555989912', '20555989912', 'IAFAS DE LA MARINA DE GUERRA DEL PERU', 'AV. VENEZUELA CDRA 24 BELLAVISTA CALLAO'),
(403, '20556281140', '20556281140', 'IBT HEALTH S.A.C.', 'CAL. CHINCHON NRO. 1018 DPTO. PIS6 INT. 02 (CALLE EX LOS NARDOS) LIMA - SAN ISIDRO'),
(404, '20556918784', '20556918784', 'ALVARO MAIZ SOCIEDAD CIVIL DE RESPONSABILIDAD LIMITADA', 'CAL.GENERAL SUAREZ NRO. 1120 INT. 101 (PRIMER PISO) LIMA - LIMA - MIRAFLORES'),
(405, '20557440098', '20557440098', 'ALMEL BASURCO NEURO S.A.C.', 'JR. CAÃ‘ON DEL PATO NRO. 250 DPTO. 302 URB. TAMBO DE MONTERRICO LIMA - LIMA - SANTIAGO DE SURCO'),
(406, '20558279312', '20558279312', 'GUILLERMO ZVIETCOVICH CORNEJO E.I.R.L.', 'AV. EJERCITO NRO. 101 INT. 315 EDIFICIO NASYA 1 (TERCER PISO-FRENTE CLINICA AREQUIPA) AREQUIPA - ARE'),
(407, '20558314835', '20558314835', 'CAMINDSA S.A.C.', 'FND. SAN FRANCISCO A-4 CHARACATO AREQUIPA'),
(408, '20562925431', '20562925431', 'CONSORCIO ALIMENTICIO ARCO S.A.C.', 'AV. LA CULTURA NRO. 701 DPTO. G-20 INT. MCD0 (MERCADO PRODUCTORES SANTA ANITA) LIMA - LIMA - SANTA A'),
(409, '20563087766', '20563087766', 'VELARE SERVICIOS SOCIEDAD ANONIMA CERRADA', 'CAL.GENERAL MIGUEL DE ECHENIQUE NRO. 324 INT. 303 LIMA - MAGDALENA DEL MAR'),
(410, '20566148006', '20566148006', 'SERVICIOS ASISTENCIALES SANTA BEATRIZ S.A.C.', '-TEODORO CARDENAS NRO. 130 (ALTURA DE LA CDRA.13 AV.AREQUIPA TORRE 1)LIMA'),
(411, '20569033641', '20569033641', 'INVERSIONES M & M VALENTINA E.I.R.L.', 'JR. JUAN PARRA DEL RIEGO NRO. 486 JUNIN - HUANCAYO - EL TAMBO'),
(412, '20571138558', '20571138558', 'JANMEL MEDICAL EIRL', 'AV. COSTANERA 428 INT 402 SAN MIGUEL'),
(413, '20600189744', '20600189744', 'ALESO MEDICAL S.A.C.', 'JR. ALBERTO URETA MZA. L LOTE. 49 URB. COVIMA LIMA - LIMA - LA MOLINA'),
(414, '20600385543', '20600385543', 'ARTHROS MEDIC S.A.C.', 'AV. NICOLAS ARRIOLA NRO. 467 INT. 402 URB. SANTA CATALINA LIMA - LA VICTORIA'),
(415, '20600406257', '20600406257', 'TRASMEDIC PERU E.I.R.L.', 'AV. MARISCAL CACERES NRO. 487 URB. VALDIVIEZO (FRENTE A HOGAR CLINICA SAN JUAN DE DIOS) LIMA - LIMA '),
(416, '20600646177', '20600646177', 'SOMEDICAL S.A.C.', 'AV. JAVIER PRADO ESTE NRO. 1599 DPTO. 409 RES. TORRES DE SAN BORJA LIMA - LIMA - SAN BORJA'),
(417, '20600905911', '20600905911', 'INVERSIONES LUGAB E.I.R.L.', 'PJ. HONRADEZ NRO. SN (2CD INSTITUTO PALIAN)JUNIN - HUANCAYO'),
(418, '20600916921', '20600916921', 'BONEMED S.A.C.', 'CAL.LOS FRAILES NRO. 160 DPTO. 301 URB. SANTA FELICIA LIMA - LIMA - LA MOLINA'),
(419, '20600969120', '20600969120', 'ILLARING SAMI E.I.R.L.', 'JR. AMAZONAS NRO. 165 INT. A1 RES. OYAGUE LIMA - LIMA - MAGDALENA DEL MAR'),
(420, '20601015235', '20601015235', 'D & M MEDICAL BUSINESS S.A.C', 'AV. PROLONGACION RICARDO PALMA NRO. 298 URB. MIRAFLORES (1 1/2 CUADRA DEL PARQUE TRADICIONES) LIMA -'),
(421, '20601052386', '20601052386', 'PROYECTOS INMOBILIARIOS DEL PERU S.A.C.', 'CAL. ALMIRANTE GUISSE NRO. 2229 DPTO. 7 LINCE-LIMA'),
(422, '20601102758', '20601102758', 'DROGUERIA ANGLOAMERICANA S.A.C.', 'AV. CAVENECIA CON LLANO ZAPATA NRO. 225 DPTO. 409 - LIMA - S'),
(423, '20601190614', '20601190614', 'MEDICAL INSURANCE EIRL', 'CAL.LOS PINOS MZA. B LOTE. 9 INT. 1 URB. LAS FRESAS- PROV. CONST. DEL CALLAO - CALLAO'),
(424, '20601224624', '20601224624', 'HOSPITAL DE EMERGENCIAS VILLA EL SALVADOR', 'AV. 200 MILLAS NRO. S/N SEC. TERCER GRUPO RESIDENCIAL 31 (ESQ. PASTOR SEVILLA S/N) LIMA - LIMA - VIL'),
(425, '20601258049', '20601258049', 'MASEGOAD SERVICIOS GENERALES E.I.R.L.', 'CAL.DOMINGO ELIAS NRO. 270 LIMA - LIMA - MIRAFLORES'),
(426, '20601993113', '20601993113', 'COLUMNA CENTER E.I.R.L.', 'JR. CARLOS AUGUSTO SALAVERRY NRO. 165 LIMA - LIMA - MIRAFLORES'),
(427, '20602121993', '20602121993', 'ALFA SOS MEDIC E.I.R.L.', 'JR. ALBERTO URETA MZA. L LOTE. 49 URB. COVIMA (ALT CUADRA 9 DE AV.CONSTRUCTORES) LIMA - LIMA - LA MO'),
(428, '20602443281', '20602443281', 'ARTRAUMA CARE E.I.R.L.', 'JR. ALICANTE NRO. 206 (ENTRE LA CDRA 6 Y 7 DE LA AV. ROSATORO) LIMA - LIMA - SAN LUIS'),
(429, '20602877541', '20602877541', 'AP MEDICAL EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', 'JR. LAS LOMAS NRO. 620 URB. BRUNO TERREROS PIO PATA (S66997179-A3CDRS DE LA IGLESIA PIO PATA) JUNIN '),
(430, '20603473591', '20603473591', 'JANA MEDICAL E.I.R.L.', 'AV. CANADA NRO. 392 URB. SANTA CATALINA (AL COSTADO DEL BCP DE CANADA) LIMA - LIMA - LA VICTORIA'),
(431, 'NEGREIROS', '20131257750', 'HOSPITAL II ESSALUD LUIS NEGREIROS VEGA', 'AV. TOMAS VALLE NRO. SN (CUADRA 39 C.H. CIUDAD SATELITE STA ROSA) CALLAO PROV. CONS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `item` int(11) NOT NULL,
  `flagDelete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `nombre`, `item`, `flagDelete`) VALUES
(2, 'ADMINISTRACIÓN', 4, 0),
(4, 'VENTAS', 3, 0),
(5, 'MANTENIMIENTOS', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso_submenu`
--

CREATE TABLE `permiso_submenu` (
  `id` int(11) NOT NULL,
  `id_submenu` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permiso_submenu`
--

INSERT INTO `permiso_submenu` (`id`, `id_submenu`, `id_usuario`, `estado`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 6, 1, 1),
(8, 1, 2, 1),
(9, 2, 2, 1),
(10, 3, 2, 1),
(11, 6, 2, 1),
(15, 7, 1, 1),
(16, 8, 1, 1),
(18, 7, 2, 1),
(19, 8, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `item` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `flagDelete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `submenu`
--

INSERT INTO `submenu` (`id`, `nombre`, `item`, `url`, `id_menu`, `flagDelete`) VALUES
(1, 'MENÚ', 1, 'pages/menu', 2, 0),
(2, 'SUBMENÚ', 2, 'pages/submenu', 2, 0),
(3, 'USUARIO', 3, 'pages/usuario', 2, 0),
(6, 'FACTURAS', 2, 'pages/factura', 4, 0),
(7, 'ARTICULOS', 1, 'pages/articulos', 5, 0),
(8, 'CLIENTES', 2, 'pages/clientes', 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temp_fac_det`
--

CREATE TABLE `temp_fac_det` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `unidad` varchar(20) NOT NULL,
  `cantidad` decimal(15,6) NOT NULL,
  `precio` decimal(15,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `estado` enum('ACTIVO','INACTIVO') DEFAULT 'ACTIVO',
  `tipo` enum('user','admin') NOT NULL DEFAULT 'user',
  `dateCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombres`, `apellidos`, `correo`, `user`, `pass`, `estado`, `tipo`, `dateCreate`) VALUES
(1, 'LUIS AUGUSTO', 'CLAUDIO PONCE', 'luis.claudio@perutec.com.pe', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'ACTIVO', 'admin', '2018-10-15 13:48:59'),
(2, 'DEMO', 'DEMO', 'demo@perutec.com.pe', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'ACTIVO', 'user', '2019-02-02 15:15:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `correlativo`
--
ALTER TABLE `correlativo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fac_cab`
--
ALTER TABLE `fac_cab`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fac_det`
--
ALTER TABLE `fac_det`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maeart`
--
ALTER TABLE `maeart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maecli`
--
ALTER TABLE `maecli`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso_submenu`
--
ALTER TABLE `permiso_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temp_fac_det`
--
ALTER TABLE `temp_fac_det`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `correlativo`
--
ALTER TABLE `correlativo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fac_cab`
--
ALTER TABLE `fac_cab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `fac_det`
--
ALTER TABLE `fac_det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `maeart`
--
ALTER TABLE `maeart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=623;

--
-- AUTO_INCREMENT de la tabla `maecli`
--
ALTER TABLE `maecli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permiso_submenu`
--
ALTER TABLE `permiso_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `temp_fac_det`
--
ALTER TABLE `temp_fac_det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
