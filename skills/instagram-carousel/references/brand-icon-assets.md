# Company and App Icon Assets

Use this reference whenever slide copy names a company, platform, or application. A recognizable mark can help viewers identify the product at a glance and make a composition feel more specific.

## Find and save the asset

1. Search Google Images for the named company or app plus `official logo PNG` or `app icon PNG`. Use the result to discover the asset, then open the source page and confirm it belongs to the company, product, or its official press/brand resources.
2. Download the direct `.png` file URL into the carousel's local `assets/` directory. Do not download Google's results page or a search-result thumbnail URL. Reuse one verified download for repeated mentions of the same mark.

```sh
mkdir -p "$ASSET_DIR"
curl -fL --retry 2 --connect-timeout 10 --max-time 30 "$ICON_PNG_URL" \
  -o "$ASSET_DIR/company-icon.png"
```

Set `ASSET_DIR` to the current carousel's `assets/` folder and `ICON_PNG_URL` to the direct image URL from the verified source. Keep attribution/source URL in a small asset note or the project's existing asset manifest when available.

## Verify and compose

- Confirm the download is a valid PNG and inspect its dimensions and transparency with `file` and `magick identify`; visually inspect the file before placing it.
- Reference the local file with a relative path in HTML/CSS so the slide renders offline. Use it only on slides where it clarifies the named company/app or improves the visual story; it can serve as a focal mark, UI cue, or restrained background motif. Do not repeat it mechanically on every slide.
- Preserve the mark's proportions, recognizable colors, and clear space. Do not stretch, recolor, or apply effects to the logo itself unless the brand rules or user explicitly call for it; enrich the surrounding composition instead.
- Respect the source's usage guidance. A Google Images result is a discovery path, not proof that an asset is official or unrestricted.
- If no trustworthy direct PNG is available, use an official app/site icon source or an existing local brand asset. If the only suitable official source is SVG, convert that file to PNG locally with ImageMagick when it preserves the mark; do not substitute an unrelated image from an unofficial repost. Continue the design if no reliable asset can be found.
