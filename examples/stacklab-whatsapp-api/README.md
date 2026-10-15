# Exemplo StackLab — Boas práticas para mensagens via API de WhatsApp

Carrossel de cinco telas em formato 4:5 (1080 × 1350 px), feito em HTML/CSS e exportado para PNG. O conjunto percorre origem e permissão, contexto, frequência, saída e checklist final com CTA para salvar e comentar.

## Arquivos

- `index.html`: fonte editável com as cinco telas; abra com `?slide=1` até `?slide=5` para exibir uma tela.
- `imagens/`: PNGs finais numerados.
- `exportar.sh`: exporta cada tela com Chrome/Chromium headless e ImageMagick.
- `assets/`: logo StackLab, Anton, ícones Phosphor e licenças correspondentes.

## Reexportar

Requer Python 3, Chrome ou Chromium e ImageMagick com o comando `magick` disponível no PATH. Se o navegador ou o ImageMagick não forem encontrados automaticamente, informe os executáveis com `CHROME_BIN` e `MAGICK_BIN`:

```sh
./exportar.sh
```

O conteúdo foi redigido a partir do artigo [Boas práticas para enviar mensagens com uma API de WhatsApp](https://blog.stackzap.com.br/boas-praticas/boas-praticas-mensagens-api-de-whatsapp/). A marca StackLab aparece somente como identidade deste exemplo; use a marca solicitada em cada novo trabalho.
