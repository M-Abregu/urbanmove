SELECT
    nbf.date_jour,
    nbf.id_zdc,
    nbf.nb_validations
    tt.id_titre
FROM {{ ref('stg_nb_fer_clean') }} nbf

LEFT JOIN {{ ref('dim_titres_transports') }} tt
ON nbs.nom_titre = tt.nom_titre
