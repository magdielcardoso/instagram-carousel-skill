# Sistema visual compartilhado para carrosséis

Use esta referência em qualquer carrossel. Ela transforma a identidade da marca em um sistema visual consistente, sem obrigar marcas e assuntos diferentes a usar o mesmo template. Trate as medidas como pontos de partida e ajuste-as à fonte, ao texto, às imagens e à marca.

## 1. Mensagem e hierarquia

- Defina em uma frase o que o público deve entender, sentir ou fazer ao terminar a sequência. Dê uma função a cada tela e remova repetições que não acrescentem significado.
- Torne a ordem de leitura evidente: mensagem principal, detalhe de apoio e, depois, prova ou ação. Combine escala, peso, posição, contraste e espaço; não dê a todos os elementos o mesmo destaque.
- Faça títulos específicos e úteis. O primeiro slide deve chamar atenção e representar corretamente o conteúdo seguinte. Use antetítulo ou linha de apoio apenas quando trouxer contexto.
- Enxugue o texto para leitura rápida. Divida explicações longas em frases, etapas ou rótulos com sentido; preserve ressalvas que alterem o significado da afirmação.

### Loop de retenção

- Faça o ponto focal e o gancho da capa comunicarem o assunto de relance. Título, linha de apoio e visual devem trabalhar juntos para conquistar atenção; um tratamento decorativo sozinho não é um gancho.
- Dê à sequência um loop de curiosidade verdadeiro: cada slide interno deve atender à pergunta, expectativa ou promessa levantada antes e, em seguida, apresentar uma próxima pergunta, consequência ou etapa relevante. Faça essa ponte aparecer na copy e na direção visual com uma prévia, comparação, sinal direcional ou teaser natural quando ajudar.
- Deixe o último slide cumprir a promessa da sequência antes do CTA solicitado. Não esconda informações essenciais, invente riscos nem acrescente cliffhangers vazios. Em carrosséis educativos e informativos, a curiosidade deve vir da compreensão da próxima etapa real, sem urgência de campanha ou funil de vendas.

## 2. Tela, área segura e composição

- Tela padrão: **1080 × 1350 px**, formato 4:5. Respeite as dimensões escolhidas pelo usuário.
- Comece com um recuo de **64–80 px** em todos os lados para textos e elementos importantes; amplie quando a composição ou o corte da plataforma exigir. Formas decorativas podem ultrapassar a borda apenas quando não encobrirem conteúdo.
- Dê a cada slide um ponto focal e um percurso intencional de leitura. Use alinhamento, escala, sobreposição, formas direcionais e espaço vazio para deixar esse percurso claro.
- Crie uma pequena família de composições em vez de repetir um layout: mantenha alguns sinais da marca e varie escala de imagem, posição do texto, densidade e estrutura para criar ritmo.
- Quando houver outros carrosséis da marca, compare suas composições e escolha uma direção visual realmente diferente para o novo tema. Mude a estrutura, a hierarquia e a linguagem visual quando fizer sentido; trocar a paleta no mesmo esqueleto de slides não é variação significativa. Preserve sinais reconhecíveis da marca, deixando assunto e objetivo determinarem a composição.
- Dê uma função intencional ao fundo. Quando combinar com a marca e o usuário não pedir um campo plano, prefira textura sutil, grid, formas geométricas ou um motivo de logo/ícone relacionado à marca ou ao assunto em vez de uma cor lisa sem intenção. Varie escala e posição ao longo da sequência; mantenha pouco ruído, proteja o contraste do texto e não decore cada espaço vazio nem aplique marca d'água em todos os slides por padrão. Para técnicas CSS em camadas e receitas práticas de fundos, leia [background-composition.pt-BR.md](background-composition.pt-BR.md).
- Equilibre áreas cheias e tranquilas. Um título grande ou uma imagem carregada precisa de respiro. Não preencha cada área vazia com card, badge, ícone, textura ou ornamento.
- Use grades para alinhar margens e grupos, não para tornar todas as telas simétricas. A assimetria funciona quando o peso visual está equilibrado e a leitura continua clara.

## 3. Cor e contraste

- Comece com a paleta real da marca. Preserve o reconhecimento da cor primária e escolha poucas cores de apoio e neutros para hierarquia, fundo e estados com significado. Não adicione uma variedade excessiva de acentos.
- Confira as combinações no **resultado final renderizado**, incluindo gradientes, transparência, fotografias e sobreposições. Uma cor legível em uma amostra plana pode perder contraste sobre uma imagem.
- Use como mínimos WCAG 2.2 **contraste 4,5:1 para texto normal** e pelo menos **3:1 para texto grande**. A WCAG define texto grande como pelo menos 18 pt regular ou 14 pt em negrito. Busque mais contraste em legendas pequenas e fontes finas, condensadas, vazadas ou decorativas, pois a rasterização e a redução podem enfraquecer a leitura.
- Gráficos e indicadores não textuais importantes devem ter **3:1 em relação às cores adjacentes** quando se aplicar o critério 1.4.11 da WCAG 2.2. Uma cor viva não garante legibilidade por si só.
- Sobre fotografia ou arte detalhada, use gradiente direcional, tonalização, painel sólido ou sombra local somente quando necessário para proteger o texto. Confira título e apoio sobre os fundos finais exatos.
- Não use a cor como único meio de comunicar status ou significado. Combine-a com rótulo, ícone, forma ou contexto explícito. Use verde, âmbar, coral e outras cores de estado apenas quando representarem algo real; mantenha ícones neutros na cor da marca ou em neutros adequados.
- Referências: [contraste mínimo WCAG 2.2](https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum) e [contraste de elementos não textuais WCAG 2.2](https://www.w3.org/WAI/WCAG22/Understanding/non-text-contrast).

## 4. Tipografia

- Prefira **uma família de display e uma família de leitura**, ou uma família com funções bem definidas. Escolha a display conforme marca e assunto; priorize leitura em tela pequena para o texto corrido. Evite fontes diferentes por novidade quando elas prejudicarem o tom ou a clareza.
- Defina uma escala tipográfica compacta para a tela de 1080 × 1350. Faixas iniciais úteis:
  - Título da capa: **96–160 px**, conforme o tamanho do texto e o número de linhas.
  - Título interno: **56–80 px**.
  - Texto corrido: **30–42 px**.
  - Rótulos e notas: **22–28 px**; preserve a leitura das fontes e evite microtexto para informação essencial.
- Use pesos que existam na fonte. Dê peso suficiente aos títulos para sobreviverem à miniatura; evite negrito artificial, fontes de display muito finas em textos críticos e longos trechos em caixa alta.
- Comece com **entrelinha de 0,9–1,08 para títulos de display** e **1,3–1,5 para texto corrido**, ajustando visualmente depois. Mantenha linhas confortáveis; quebre títulos com intenção, sem deixar palavras órfãs ou uma última linha estranha.
- Use tipografia expressiva para criar movimento somente se a frase inteira continuar clara. Inclinação, tracking apertado, contorno, sombra e sobreposição são acentos, não substitutos de hierarquia.
- Confira a capa em tamanho pequeno. Se o tema, gancho ou frase principal sumir, simplifique o tratamento ou aumente escala e contraste.

## 5. Espaçamento, agrupamento e alinhamento

- Use ritmo consistente com base em **4 px** e prefira medidas como 8, 12, 16, 24, 32, 48, 64 e 80 px. Ajuste opticamente quando isso melhorar o resultado.
- Separe rótulo e conteúdo relacionados por cerca de **8–16 px**. Distinga grupos diferentes com espaços maiores, muitas vezes **24–48 px**. Como início, deixe **28–40 px** dentro de cards ou áreas contornadas relevantes.
- Alinhe blocos de texto, molduras e elementos recorrentes a poucas margens. Use espaçamento para mostrar relações antes de recorrer a divisórias ou caixas.
- Dê espaço ao texto dentro de áreas coloridas ou contornadas. Confira a distância entre texto e borda no tamanho final, sobretudo em botões, badges, rótulos e cards estreitos.

## 6. Cantos, bordas e profundidade

- Escolha o acabamento dos cantos de acordo com a marca: um visual editorial pode usar cantos retos; um produto mais suave pode usar uma escala consistente, por exemplo **8 / 16 / 24 px / pílula**.
- Reutilize poucos raios. Mantenha cada componente consistente e use pílulas apenas para rótulos ou ações que realmente pedem esse formato. Não arredonde tudo nem aninhe cards sem necessidade de agrupamento.
- Use bordas finas para esclarecer contornos ou grupos. Use sombras com moderação para separar camadas; prefira uma profundidade sutil a vários brilhos, contornos e sombras pesadas.
- Mantenha uma lógica comum para espessura dos traços, junções e direção das sombras na sequência.

## 7. Ícones, ilustrações e imagens

- Use ícones e ilustrações para explicar, apontar, comparar ou comprovar. Combine família, espessura do traço, nível de detalhe e escala. Se a marca usa Phosphor, mantenha o tratamento Regular ou Duotone coerente.
- Alinhe ícones à linha de base do texto e dê espaço suficiente a eles. Reserve cores de acento para estados semânticos reais ou focos intencionais; evite decoração multicolorida aleatória.
- Prefira capturas reais do produto e assets aprovados como evidência. Identifique interfaces ilustrativas como ilustrações; não apresente funcionalidades, pessoas, métricas, citações ou dados de evento inventados como reais.
- Se houver texto sobre uma imagem detalhada, proteja aquela área localmente. Recorte para apoiar a mensagem, não apenas para preencher o espaço. Preserve espaço negativo ao redor do assunto principal.
- Setas, marcas, texturas e motivos devem guiar a atenção ou reforçar o tema. Remova os que não fizerem nenhuma dessas coisas.

## 8. Revisão final

- Confira todas as telas em tamanho real e em miniatura. Confirme que título e texto de apoio sobrevivem à redução.
- Leia a sequência: a função de cada slide está clara, a história avança e o CTA é fácil de localizar?
- No arquivo renderizado, confira cortes, sobreposições, contraste fraco, recuos apertados, substituição de fonte, alinhamento inconsistente, palavras órfãs e assets ausentes.
- Quando possível, use um verificador de contraste nas combinações finais de texto e fundo. A inspeção visual sozinha não comprova conformidade WCAG.
- Pergunte sobre cada elemento: ele esclarece a mensagem, estabelece a marca, mostra uma prova ou guia o olhar? Caso contrário, remova-o ou reduza seu destaque.
