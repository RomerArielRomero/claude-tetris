# AGENTS.md

Tetris en JavaScript Vanilla (ES6+) usando HTML5 Canvas. Sin build, sin dependencias, sin package.json, sin tests, sin linter.

## Ejecutar

Abre `index.html` directamente en el navegador, o sirve los archivos estáticamente:

```bash
python -m http.server 8000
# luego abre http://localhost:8000
```

## Verificación

Solo manualmente — juega en el navegador. No hay comandos de test, lint o typecheck.

## Puntos importantes

- Toda la lógica del juego está en `game.js` (archivo único, ~300 líneas) y se carga con una etiqueta `<script>` simple en `index.html`. Manténlo sin dependencias.
- Las constantes `COLS`, `ROWS` y `BLOCK` al inicio de `game.js` deben mantenerse sincronizadas con el `width`/`height` del canvas `#board` en `index.html` (`COLS × BLOCK` × `ROWS × BLOCK`). Cambiar una sin la otra rompe el renderizado silenciosamente.
- El juego se inicia automáticamente con la llamada a `init()` al final de `game.js`.
- Los ajustes del juego (curva de velocidad, colores de piezas, puntuación) están en las constantes al inicio de `game.js`.
- El texto de la interfaz está en español (los comentarios del código están en inglés); si modificas el HUD, mantén etiquetas como "Puntuación"/"Reiniciar" coherentes.