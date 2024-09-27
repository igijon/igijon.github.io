# Transformaciones XML con XSLT
**XSLT** es un transformador de documentos XML.
- Está incorporado en navegadores web.
- Las transformaciones se incorporan en un documento `xsl`
- Por políticas de seguridad no se puede ejecutar desde el fichero local, por lo que podemos hacer:

```bash
python -m http.server
```
Y ya en el navegador web:

http://localhost:8000/mi_doc.xml

