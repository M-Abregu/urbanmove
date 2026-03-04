SELECT
ANNEE,
SEMESTRE,
ID_GROUPOFLIGNE,
CAT_JOUR,
split(TRNC_HORR_60, '-')[offset(0)] AS heure,
pourc_validations
FROM {{ source('UrbanMove_raw', 'profil_surface') }}