select
    id_operateur,
    nom_operateur,
    mode,
    annee,
    resultat
from {{ ref('stg_indicateurs_perception') }};