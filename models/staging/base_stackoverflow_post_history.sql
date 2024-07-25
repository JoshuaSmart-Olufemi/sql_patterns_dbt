with source as (
      select * from {{ source('stackoverflow', 'post_history') }}
),
renamed as (
    select
        id :: int,
        creation_date :: timestamp,
        post_id :: int,
        post_history_type_id :: int,
        revision_guid,
        user_id :: int,
        text,
        comment

    from source
)
select * from renamed
  