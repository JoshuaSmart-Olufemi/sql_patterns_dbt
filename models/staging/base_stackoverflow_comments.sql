with source as (
      select * from {{ source('stackoverflow', 'comments') }}
),
renamed as (
    select
        id :: int 
        , text
        , creation_date :: int 
        , post_id :: int 
        , user_id :: int 
        , user_display_name
        , score :: int 
    from source
)
select * from renamed
  