with source as (
      select * from {{ source('stackoverflow', 'votes') }}
),
renamed as (
    select
        id :: int,
        creation_date :: timestamp,
        post_id ::int,
        vote_type_id :: int 

    from source
)
select * from renamed
  