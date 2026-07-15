# personae

Dépôt canonique L0 pour les **âmes** et les **personae** de l’écosystème gerivdb.

## Structure

```text
personae/
├── souls/
│   └── canonical.md
├── personae/
│   ├── poincare.yaml
│   ├── musk.yaml
│   ├── lecun.yaml
│   ├── karpathy.yaml
│   ├── bellard.yaml
│   ├── steinberger.yaml
│   └── maxwell.yaml
├── sections/
│   ├── archi.yaml
│   ├── perf.yaml
│   ├── ml.yaml
│   ├── usecase.yaml
│   ├── code.yaml
│   ├── sdk.yaml
│   ├── grad.yaml
│   ├── assert.yaml
│   └── merge.yaml
├── teams/
│   └── horizontal-team-v2.yaml
├── design.yaml
└── README.md
```

## Usage

```bash
hermes generate --soul souls/canonical.md --team teams/horizontal-team-v2.yaml
```

## Règles

- Ce dépôt est en `L0-CANON`.
- Toute modification de structure nécessite un ADR.
- `design.yaml` doit rester valide pour `connard-design`.
