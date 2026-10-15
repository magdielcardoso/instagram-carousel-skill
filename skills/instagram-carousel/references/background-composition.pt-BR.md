# Composição de fundos para carrosséis com CSS

Use esta referência quando o carrossel precisar de uma superfície visualmente construída ou quando um preenchimento liso parecer inacabado. Trate o fundo como parte da narrativa visual: ele pode estabelecer material, profundidade, direção, reconhecimento de marca e continuidade. Deve apoiar o conteúdo sem se tornar um segundo título.

## Escolha primeiro a função visual

Antes de escrever CSS, decida o que o fundo deve comunicar. Algumas funções úteis:

- **Material:** papel, tela, canvas, blueprint ou superfície tátil da marca.
- **Estrutura:** grade, faixas, anéis, caminhos ou geometria que ajude a explicar o assunto.
- **Direção:** corte diagonal, faixa em degraus, percurso ou forma que conduza o olhar até o próximo elemento.
- **Memória de marca:** fragmento discreto de logotipo, ícone do produto ou forma característica.
- **Ritmo:** superfície mais clara, escura ou silenciosa para dar uma pausa visual à sequência.

Use uma função principal por tela. Repita uma pequena linguagem visual no carrossel, mas varie escala, recorte, posição ou técnica do motivo para criar ritmo. Uma superfície intencionalmente tranquila pode ajudar; evite usar a mesma cor lisa por padrão em todas as telas quando o pedido exigir fundos mais ricos.

## Construa a superfície em camadas

Pense do fundo para a frente:

1. **Base:** cor da marca, neutro ou imagem.
2. **Atmosfera:** tonalização discreta, variação que lembre papel ou granulação de baixa opacidade.
3. **Estrutura:** grade, hachura, pontos, curvas de nível ou linhas de perspectiva.
4. **Motivo:** forma geométrica grande, fragmento do logo, ícone, caminho ou ilustração ligada ao assunto.
5. **Proteção do conteúdo:** área limpa ou sobreposição local atrás do texto importante, quando necessário.

Nem todo slide precisa das cinco camadas. Duas ou três camadas intencionais geralmente comunicam melhor do que acumular efeitos. Mantenha texto e provas do produto em primeiro plano; não aplique padrões carregados sobre capturas de interface ou conteúdo essencial.

## Recursos de CSS e quando usá-los

- Use várias camadas em `background-image` para combinar um padrão de base com um campo de cor maior. Defina `background-size` e `background-position` de cada camada com intenção; células muito pequenas podem vibrar depois da exportação, enquanto as grandes podem competir com o texto.
- Use `repeating-linear-gradient()` para grades delicadas, hachuras diagonais, papel pautado ou linhas de blueprint. Mantenha o contraste das linhas baixo e use uma máscara ou pseudo-elemento recortado para limitar o padrão a áreas específicas.
- Use `radial-gradient()` para pontos de meio-tom, anéis ou uma transição tonal. Prefira estrutura visível, como pontos ou contornos, a um brilho colorido em forma de holofote atrás do título.
- Use `conic-gradient()` para criar um campo rotacional, segmentado ou direcional quando combinar com a marca. Escolha centro e ângulo com intenção; não adicione gradiente apenas para fazer uma superfície lisa parecer movimentada.
- Use `::before` e `::after` para formas grandes que ultrapassem o canvas: círculos, faixas, anéis, molduras e painéis deslocados. Combine com `clip-path`, `border-radius`, bordas ou `mask-image` para ajustar a forma à composição.
- Use SVG inline para caminhos precisos, line art, logos, ícones e formas irregulares. Para um percurso ou marca personalizada, SVG costuma ficar mais claro e previsível do que uma pilha complexa de formas CSS.
- Use textura local transparente ou uma pequena camada inline de turbulência SVG para uma granulação sutil. Mantenha a opacidade baixa e inspecione a imagem rasterizada; o ruído pode ficar mais forte ao reduzir a escala.
- Use `mix-blend-mode` somente quando criar um efeito de material específico. Ele pode alterar o contraste entre navegadores e sobre camadas semitransparentes; confira a imagem final exportada.

## Padrões iniciais

São pontos de partida, não templates prontos. Substitua cores e escalas pelos valores do sistema visual atual.

```css
.slide {
  position: relative;
  isolation: isolate;
  overflow: hidden;
  background-color: var(--surface);
}

.slide::before,
.slide::after {
  content: "";
  position: absolute;
  z-index: -1;
  pointer-events: none;
}

/* Grade de baixo contraste em uma superfície escura e técnica. */
.slide--grid {
  background-image:
    linear-gradient(rgba(255, 255, 255, .055) 1px, transparent 1px),
    linear-gradient(90deg, rgba(255, 255, 255, .055) 1px, transparent 1px);
  background-size: 56px 56px;
}

/* Pontos de meio-tom limitados a um canto recortado. */
.slide--dots::before {
  inset: -24px -24px auto auto;
  width: 300px;
  height: 300px;
  opacity: .45;
  background-image: radial-gradient(var(--accent) 1.2px, transparent 1.6px);
  background-size: 16px 16px;
  mask-image: radial-gradient(circle at top right, #000 10%, transparent 72%);
}

/* Campo inclinado da cor da marca apontando para o conteúdo. */
.slide--cut::after {
  inset: 18% -12% auto auto;
  width: 42%;
  height: 58%;
  background: color-mix(in srgb, var(--accent) 12%, transparent);
  clip-path: polygon(28% 0, 100% 0, 74% 100%, 0 84%);
}
```

Se o navegador de destino não suportar um recurso escolhido, simplifique o efeito ou use SVG inline. Mantenha o código independente quando isso aumentar a confiabilidade da exportação de HTML para imagem.

## Componha para o slide, não ao redor do espaço vazio

- Coloque textura onde ela possa emoldurar o título, conectar um diagrama ou equilibrar uma imagem grande. O padrão não precisa cobrir todo o canvas.
- Faça a direção do motivo reforçar a ordem de leitura: um caminho pode conduzir a uma prova do produto; um plano diagonal pode apontar para o CTA; uma moldura pode conter uma ilustração.
- Use o espaço vazio como camada intencional. Não preencha cada área aberta com forma, grade, ícone, ruído ou brilho.
- Varie o peso visual entre telas. Uma capa texturizada pode levar a um slide de prova mais calmo e depois a um fechamento mais expressivo.
- Mantenha coerentes as bordas, a espessura das linhas e as cores de acento, mesmo quando as técnicas de fundo mudarem.

## Contraste e exportação

- Confira o contraste sobre o **fundo já composto**, não apenas sobre a cor de base. Preserve uma área limpa para o texto ou adicione um painel sólido/tonal local se o padrão reduzir a legibilidade.
- Mantenha o contraste dos padrões abaixo do texto e das ilustrações importantes. Linhas finas e muito frequentes podem vibrar ou sumir no feed; confira em miniatura.
- Não aplique textura decorativa sobre capturas do produto, capturas de interfaces reais ou pequenas anotações.
- Renderize o HTML no navegador de destino e inspecione cada PNG exportado em tamanho real e reduzido. Confirme que máscaras, recortes, SVGs, transparência e modos de mesclagem sobrevivem à exportação.
- Se o usuário pedir um fundo intencionalmente liso, respeite essa preferência e crie interesse com composição, tipografia e elementos focais.
