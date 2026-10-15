# StackLab example — WhatsApp API messaging practices

Five-slide carousel in 4:5 format (1080 × 1350 px), authored in HTML/CSS and exported to PNG. The Portuguese-language story covers permission, context, frequency, opt-out, and a final checklist with a save-and-comment CTA.

## Files

- `index.html`: editable source with five slides; use `?slide=1` through `?slide=5` to show an individual slide.
- `imagens/`: numbered final PNGs.
- `exportar.sh`: renders each slide with headless Chrome/Chromium and exports it with ImageMagick.
- `assets/`: StackLab logo, Anton font, Phosphor icons, and their licenses.
- `manifest.json`: language, dimensions, source, and asset metadata.

## Export again

Requires Python 3, Chrome or Chromium, and ImageMagick with `magick` on `PATH`. If the browser or ImageMagick is not detected automatically, set `CHROME_BIN` and `MAGICK_BIN` to their executable paths:

```sh
./exportar.sh
```

The carousel is based on [Best practices for sending messages with a WhatsApp API](https://blog.stackzap.com.br/boas-praticas/boas-praticas-mensagens-api-de-whatsapp/). StackLab branding is used only in this example; adapt new work to the brand requested by the user.

---

## Português (Brasil)

Carrossel de cinco telas em formato 4:5 (1080 × 1350 px), criado em HTML/CSS e exportado para PNG. A narrativa em português aborda permissão, contexto, frequência, saída e um checklist final com CTA para salvar e comentar.

### Arquivos

- `index.html`: fonte editável com cinco telas; use `?slide=1` a `?slide=5` para exibir uma tela.
- `imagens/`: PNGs finais numerados.
- `exportar.sh`: renderiza cada tela com Chrome/Chromium headless e exporta com ImageMagick.
- `assets/`: logo StackLab, fonte Anton, ícones Phosphor e respectivas licenças.
- `manifest.json`: idioma, dimensões, fonte do conteúdo e metadados dos assets.

### Exportar novamente

Requer Python 3, Chrome ou Chromium e ImageMagick com `magick` disponível no `PATH`. Se o navegador ou o ImageMagick não forem detectados automaticamente, defina `CHROME_BIN` e `MAGICK_BIN` com o caminho dos executáveis:

```sh
./exportar.sh
```

O carrossel foi baseado no artigo [Boas práticas para enviar mensagens com uma API de WhatsApp](https://blog.stackzap.com.br/boas-praticas/boas-praticas-mensagens-api-de-whatsapp/). A identidade StackLab aparece apenas neste exemplo; adapte novos materiais à marca solicitada pelo usuário.
