# Assets de ícones de empresas e aplicativos

Use esta referência sempre que o texto de um slide citar uma empresa, plataforma ou aplicativo. Uma marca reconhecível ajuda o público a identificar o produto rapidamente e deixa a composição mais específica.

## Encontre e salve o asset

1. Pesquise no Google Imagens o nome da empresa ou do app junto de `logo oficial PNG` ou `ícone do app PNG`. Use o resultado para encontrar o asset; depois abra a página de origem e confirme que ela pertence à empresa, ao produto ou aos recursos oficiais de imprensa/marca.
2. Baixe a URL direta do arquivo `.png` para a pasta local `assets/` do carrossel. Não baixe a página de resultados do Google nem a URL de miniatura do resultado. Reutilize um único arquivo verificado para menções repetidas à mesma marca.

```sh
mkdir -p "$ASSET_DIR"
curl -fL --retry 2 --connect-timeout 10 --max-time 30 "$ICON_PNG_URL" \
  -o "$ASSET_DIR/icone-empresa.png"
```

Defina `ASSET_DIR` como a pasta `assets/` do carrossel atual e `ICON_PNG_URL` como a URL direta da imagem na fonte verificada. Quando houver um manifesto de assets no projeto, registre nele a URL de origem e a atribuição.

## Confira e componha

- Confirme que o arquivo baixado é um PNG válido e confira dimensões e transparência com `file` e `magick identify`; inspecione a imagem antes de usá-la.
- Use o arquivo local com um caminho relativo no HTML/CSS para que o slide funcione offline. Inclua-o apenas nos slides em que esclareça qual empresa/app está sendo citado ou melhore a narrativa visual; pode ser um elemento focal, um sinal de interface ou um motivo discreto no fundo. Não o repita mecanicamente em todos os slides.
- Preserve proporções, cores reconhecíveis e área de respiro. Não estique, recolora nem aplique efeitos ao próprio logo, a menos que as regras da marca ou o usuário peçam; enriqueça a composição ao redor.
- Respeite as orientações de uso da fonte. Um resultado do Google Imagens é um caminho de descoberta, não prova de que o asset é oficial ou livre de restrições.
- Se não houver uma URL PNG direta e confiável, use uma fonte oficial do ícone do app/site ou um asset de marca local já disponível. Se a única fonte oficial adequada for SVG, converta-o localmente para PNG com ImageMagick quando isso preservar a marca; não substitua por uma imagem sem relação de uma republicação não oficial. Continue o design sem o asset caso não encontre uma opção confiável.
