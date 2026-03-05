select
    annee,
    semestre,
    id_zdc,
    cat_jour,
    heure,
    pourc_validations
from {{ ref('stg_profil_fer_clean') }};