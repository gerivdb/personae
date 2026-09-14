---
type: PRD-MOC
version: "0.1"
schema_version: "0.3"
intent_hash: "0xPRD_MOC_PERSONAE_RESEARCH_STRUCTURE_20260914"
parent_intent: "0xPRD_MOC_E5620_PERSONAE_EXTENSION_20260914"
status: proposed
date: "2026-09-14"
author: KiloCode
ecosystem: gerivdb
layers: [N2, N4]
extends: [gerivdb/personae, gerivdb/VERSES]
impl_requires: "PRD-MOC-E5620-PERSONAE-EXTENSION-2026-09-14"
env: ENV2
non_goals:
  - Modifier les personae métier LP existantes
  - Créer un nouveau repo
  - Implémenter un générateur de personae
---

# PRD-MOC-PERSONAE — Structure research pour personae E5620

> Définir la structure `personae/research/` dans le repo `gerivdb/personae`
> pour les personae de recherche du projet E5620 × Mouche à fruits.

## 1. Objectif

Ajouter un dossier `personae/research/` contenant les YAML des personae de recherche,
complété par un `crossref.yaml` liant chaque persona à son verse VERSES.

## 2. Contexte

- `personae` repo contient déjà `personae/business/` avec 5 personae métier LP
- 21 personae research E5620 ont été créées dans `personae/research/`
- Chaque persona a un verse correspondant dans `gerivdb/VERSES`

## 3. Structure

```
personae/
├── personae/
│   ├── business/          # 5 personae métier LP
│   │   ├── commercial.yaml
│   │   ├── administratif.yaml
│   │   ├── client-collectivite.yaml
│   │   ├── client-particulier.yaml
│   │   └── prestataire-artiste.yaml
│   └── research/          # 21 personae research E5620
│       ├── marder.yaml
│       ├── lecun.yaml
│       ├── mead.yaml
│       ├── indiveri.yaml
│       ├── strukov.yaml
│       ├── strogatz.yaml
│       ├── doya.yaml
│       ├── pfeifer.yaml
│       ├── dennett.yaml
│       ├── tegmark.yaml
│       ├── chomsky.yaml
│       ├── huang.yaml
│       ├── musk.yaml
│       ├── altman.yaml
│       ├── amodei.yaml
│       ├── zhang.yaml
│       ├── liang.yaml
│       ├── chen.yaml
│       ├── archiviste.yaml
│       ├── data-engineer.yaml
│       └── ml-expert.yaml
└── crossref.yaml           # Liaisons personae -> VERSES
```

## 4. Format YAML

Chaque fichier `personae/research/<persona>.yaml` contient :

```yaml
name: <persona>
team: <D|E|F|G>
expertise:
  - <domaine 1>
  - <domaine 2>
style:
  ton: <ton d'expression>
  mots:
    - <mot clé 1>
    - <mot clé 2>
role_meta: <fonction structurante>
constraints:
  - <garde-fou 1>
  - <garde-fou 2>
output:
  - <livrable 1>
  - <livrable 2>
weakness: <angle mort>
methods:
  - <méthode 1>
tags:
  - <tag 1>
  - <tag 2>
verse: gerivdb/VERSES::verses/actifs/<persona>-verse.md
```

## 5. Cross-ref

`crossref.yaml` contient les liaisons `personae -> VERSES` :

```yaml
- <persona>: gerivdb/VERSES::verses/actifs/<persona>-verse.md
```

## 6. Validation & Gates

- Vérifier que chaque YAML a un champ `verse` valide
- Vérifier que chaque verse VERSES a le tag `[CONFORME_NEXUS]`
- Vérifier que `crossref.yaml` contient toutes les liaisons

## 7. Livrables opérationnels

- 21 fichiers YAML dans `personae/research/`
- 1 fichier `crossref.yaml` à la racine de `personae/`

## 8. Références

- PRD-MOC-E5620-PERSONAE-EXTENSION-2026-09-14
- ADR-2026-06-24-001-Trix-Box-Transposition
- ADR-2026-06-28-001-LOGICAL-ARCHITECTURE-N1-N4
