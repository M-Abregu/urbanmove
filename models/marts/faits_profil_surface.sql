select
    annee,
    semestre,
    id_group_ligne,
    cat_jour,
    heure,
    pourc_validations
from {{ ref('stg_profil_surface') }};