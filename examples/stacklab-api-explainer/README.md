# StackLab example — WhatsApp API explainer

Five-slide carousel in 4:5 format (1080 × 1350 px), authored in HTML/CSS and exported to PNG. This technical direction uses a subtle blueprint grid, route diagrams, and integration markers to explain how an application reaches a connected WhatsApp session and how later events return.

## Files and export

- `index.html`: editable source; use `?slide=1` through `?slide=5` to show one slide.
- `imagens/`: numbered final PNGs.
- `manifest.json`: source, dimensions, slide count, and asset metadata.
- `assets/`: StackLab logo, Anton font, Phosphor icons, and licenses.

Requires Python 3, Chrome or Chromium, and ImageMagick with `magick` on `PATH`:

```sh
./exportar.sh
```

The carousel is based on [WhatsApp API: what it is and how it works](https://blog.stackzap.com.br/conceitos/api-de-whatsapp-o-que-e-e-como-funciona/). StackLab branding is used only in this example; adapt each new carousel to its requested brand. Compare this technical blueprint with the [conversation-led best-practices example](../stacklab-whatsapp-api/) to see two distinct visual directions from one brand.

---

## Português (Brasil)

Carrossel de cinco telas em formato 4:5 (1080 × 1350 px), criado em HTML/CSS e exportado para PNG. Esta direção técnica usa um grid sutil, diagramas de rota e marcadores de integração para explicar como uma aplicação chega a uma sessão conectada do WhatsApp e como eventos posteriores retornam.

### Arquivos e exportação

- `index.html`: fonte editável; use `?slide=1` a `?slide=5` para exibir um slide.
- `imagens/`: PNGs finais numerados.
- `manifest.json`: fonte do conteúdo, dimensões, quantidade de slides e assets.
- `assets/`: logo StackLab, fonte Anton, ícones Phosphor e licenças.

Requer Python 3, Chrome ou Chromium e ImageMagick com `magick` no `PATH`:

```sh
./exportar.sh
```

O carrossel foi baseado no artigo [API de WhatsApp: o que é e como funciona](https://blog.stackzap.com.br/conceitos/api-de-whatsapp-o-que-e-e-como-funciona/). A identidade StackLab aparece apenas neste exemplo. Compare esta linguagem técnica com [o exemplo editorial sobre boas práticas](../stacklab-whatsapp-api/) para ver duas direções visuais distintas da mesma marca.
