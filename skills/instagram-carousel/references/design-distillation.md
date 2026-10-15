# Shared carousel design system

Use this reference for every carousel. It turns brand direction into a repeatable visual system without forcing every brand or subject into the same template. Treat the measurements below as starting ranges; adjust them to the selected typeface, copy, imagery, and brand.

## 1. Message and hierarchy

- State the one thing the audience should understand, feel, or do after the sequence. Give each slide one job and remove repeated copy that adds no new meaning.
- Make the reading order apparent at a glance: primary message, supporting detail, then evidence or action. Use scale, weight, placement, contrast, and whitespace together; do not make every element compete for headline status.
- Keep slide titles specific and useful. The first slide must earn attention while accurately representing what follows. Use a second line, eyebrow, or short deck only when it adds context.
- Keep copy short enough to scan. Break long explanations into meaningful phrases, steps, or labels; preserve qualifications that change the meaning of a claim.

### Retention loop

- Make the cover's focal point and hook communicate the subject at a glance. The title, supporting line, and visual should work together to earn attention; a decorative treatment alone is not a hook.
- Give the sequence a truthful curiosity loop: each interior slide should satisfy the question, expectation, or promise raised just before it, then introduce one relevant next question, consequence, or step. Carry that bridge through both copy and visual direction with a preview, comparison, directional cue, or natural teaser when useful.
- Let the last slide pay off the sequence before presenting the requested CTA. Do not withhold essential information, invent stakes, or add empty cliffhangers. For educational and informational carousels, curiosity should come from understanding the next real step, not from campaign urgency or a sales funnel.

## 2. Canvas, safe area, and composition

- Default canvas: **1080 × 1350 px**, 4:5. Respect a user-selected size when provided.
- Start with a **64–80 px inset** on all sides for important copy and marks; increase it where the composition or platform crop needs room. Keep decorative shapes free to bleed only when they cannot obscure content.
- Give each slide one dominant focal point and a deliberate path through the information. Use alignment, scale, overlap, directional shapes, and empty space to make that path clear.
- Build a small composition family, not one repeated layout: keep a few brand cues consistent, then vary image scale, text placement, density, and visual structure to create pace.
- When the brand has other carousels, compare their compositions and choose a genuinely different art direction for the new subject. Change the structure, hierarchy, and visual language where appropriate; a palette swap on the same slide skeleton is not meaningful variation. Keep recognizable brand cues, but let the subject and objective determine the composition.
- Give the background a purposeful role. For clean directions, start with restrained texture or a grid rather than a featureless fill. Use large geometric forms or logo/icon motifs only when the brief or message gives them a clear role; do not add broad silhouettes just to occupy negative space. Keep backgrounds low-noise, protect text contrast, and do not decorate every open area or watermark every slide by default. For layered CSS techniques and practical background recipes, read [background-composition.md](background-composition.md).
- Balance dense and quiet areas. A large display title or busy image needs nearby breathing room. Do not fill every open area with a card, badge, icon, texture, or ornament.
- Use grids to align edges and groups, not to make every slide symmetrical. Asymmetry is useful when visual weight still feels balanced and the reading order remains obvious.

## 3. Color and contrast

- Begin with the actual brand palette. Keep the primary brand color recognizable; choose a limited set of supporting hues and neutrals for hierarchy, background, and meaningful states. Do not add a rainbow of accents.
- Check color pairs on the **final rendered composite**, including gradients, transparency, photographs, and overlays. A color that contrasts on a flat swatch may fail once placed over an image.
- Use **4.5:1 contrast for normal text** and at least **3:1 for large text** as WCAG 2.2 minimums. WCAG defines large text as at least 18 pt regular or 14 pt bold. Aim higher for small captions, thin, condensed, outlined, or decorative type because rasterization and downscaling can weaken apparent contrast.
- Meaningful non-text graphics and interface indicators should reach **3:1 against adjacent colors** where WCAG 2.2 SC 1.4.11 applies. Do not assume a bright hue alone is legible.
- On photography or detailed art, add a directional gradient, tint, solid text panel, or local shadow only as needed to protect the text. Recheck the title and supporting copy over their exact final backgrounds.
- Never use color as the only carrier of status or meaning. Pair it with a label, icon, shape, or explicit context. Use green, amber, coral, or other status colors only when they genuinely describe the content; keep neutral icons in the brand color or a suitable neutral.
- References: [WCAG 2.2 contrast minimum](https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum) and [WCAG 2.2 non-text contrast](https://www.w3.org/WAI/WCAG22/Understanding/non-text-contrast).

## 4. Typography

- Prefer **one display family and one reading family**, or one family with clearly chosen roles. Match the display face to the brand and subject; select body text for clarity at phone size. Avoid novelty fonts that weaken tone or legibility.
- Define a compact type scale for the 1080 × 1350 canvas. Useful starting ranges are:
  - Cover headline: **96–160 px**, depending on word length and number of lines.
  - Interior headline: **56–80 px**.
  - Body copy: **30–42 px**.
  - Labels and supporting notes: **22–28 px**; keep small source notes readable and avoid reducing essential information to microtype.
- Use real available font weights. Give headlines enough weight to remain legible at thumbnail size; avoid faux bold, thin display faces for critical copy, and long all-caps passages.
- Start around **0.9–1.08 line-height for display headings** and **1.3–1.5 for body copy**, then adjust optically. Keep line lengths comfortable; split a headline intentionally instead of leaving a stray short word or awkward orphan.
- Let expressive typography create movement only when the full phrase remains clear. Rotation, tight tracking, outlines, shadows, and overlaps are accents, not substitutes for a strong hierarchy.
- Preview the cover small. If the subject, hook, or key phrase disappears, simplify the headline treatment or increase its scale and contrast.

## 5. Spacing, grouping, and alignment

- Use a consistent **4 px base rhythm** and favor steps such as 8, 12, 16, 24, 32, 48, 64, and 80 px. Do not force every gap to the scale if optical correction improves the result.
- Keep closely related label and content about **8–16 px** apart. Separate distinct groups with larger gaps, often **24–48 px**. Leave roughly **28–40 px** inside substantial cards or outlined regions as a starting point.
- Align text blocks, image frames, and recurring elements to a small set of edges. Use spacing to show relationships before adding divider lines or containers.
- Give copy room to breathe inside colored or bordered regions. Inspect the text-to-edge gap at final size, especially around buttons, badges, labels, and narrow cards.

## 6. Corners, borders, and depth

- Choose corner treatment to fit the brand: editorial work may use square corners; softer product styles may use a small, consistent scale such as **8 / 16 / 24 px / pill**.
- Reuse a small number of radii. Keep a component's corners consistent and use pills selectively for a true label or action. Do not round every shape or nest card inside card without a clear grouping need.
- Use thin borders when they clarify an edge or group. Use shadows sparingly to separate layers; prefer one restrained depth style over multiple heavy glows, strokes, and shadows.
- Keep a common logic for stroke widths, corner joins, and shadow direction across the sequence.

## 7. Icons, illustrations, and imagery

- Use icons and illustrations to explain, point, compare, or prove. Match their family, stroke weight, level of detail, and scale. If the brand uses Phosphor, use the appropriate Regular or Duotone treatment consistently.
- Align icons to nearby text baselines and give them enough space. Reserve color accents for real semantic states or purposeful focal points; avoid random multicolor decoration.
- Prefer real product captures and approved brand assets as evidence. Label a mock interface or illustration as illustrative; do not present invented product features, people, metrics, quotes, or event details as real.
- When an image has detail behind text, protect the local text area. Crop to support the message rather than filling space. Maintain enough negative space around the main subject.
- Arrows, marks, textures, and motifs should guide attention or reinforce the subject. Remove any that do neither.

## 8. Final review

- Inspect the exported PNGs after every render; the source HTML and a successful export command are not visual sign-off. Use two passes: at macro scale, review an ordered montage at feed size for hierarchy, rhythm, balance, crop, and lower-area use; at micro scale, inspect individual slides at full resolution and zoom for text legibility, contrast, icon centering and baseline alignment, padding, radii, clipping, and asset rendering. Correct visible defects in the source and re-export until both passes are clean.
- Check all slides at full size and as a small feed thumbnail. Confirm the title and supporting line survive downscaling.
- Follow the sequence in order: is each slide's role clear, does the story progress, and is the CTA easy to find?
- Check the final rendered image for clipping, overlaps, weak contrast, cramped insets, font fallback, inconsistent alignment, accidental widows, and missing assets.
- Use a contrast checker for final text/background pairs when possible. Visual review alone is not proof of WCAG conformance.
- Ask of each visible element: does it clarify the message, establish the brand, show evidence, or guide the eye? If not, remove or quiet it.
