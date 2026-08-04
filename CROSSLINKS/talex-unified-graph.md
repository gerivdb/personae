---
source: personae
target: TALEX
type: semantic_graph_ingestion
direction: outbound
status: active
intent_hash: 0xCROSSLINK_PERSONAE_TALEX_20260804
---

# Crosslink personae -> TALEX

personae ingere ses souls et personae dans le UnifiedSemanticGraph de TALEX.

## Cible

| Attribut | Valeur |
|----------|--------|
| **Repo** | `gerivdb/TALEX` |
| **Module** | `src/talex/core/unified_graph.py` |
| **Reader** | `src/talex/readers/__init__.py::EcosystemReader._read_personae` |
| **Strate** | L0-CANON |

## Artefacts consommes par TALEX

| Artefact personae | Type TALEX | EdgeKind |
|-------------------|------------|----------|
| `souls/*.md` | `SemanticNode[SOUL]` | - |
| `personae/*.yaml` | `SemanticNode[PERSONA]` | PART_OF |
| `design.yaml` | `SemanticNode[DESIGN]` | DEPENDS_ON |

## Usage

```bash
x-forge analyze repo --name personae --root D:\DO\WEB
x-forge analyze triangulate --target SOUL:... --root D:\DO\WEB
```

## Reference

- **Repo source** : `gerivdb/personae`
- **IntentHash personae** : `0xPERSONAE_ENGINE_20260801`
