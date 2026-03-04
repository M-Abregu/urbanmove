SELECT
ANNEE as annee,
SEMESTRE as semestre,
trim(CAT_JOUR) as cat_jour,
split(TRNC_HORR_60, '-')[offset(0)] AS heure,
trim(ID_GROUPOFLIGNE) as id_groupe_ligne ,
pourc_validations
FROM {{ source('UrbanMove_raw', 'profil_surface') }}