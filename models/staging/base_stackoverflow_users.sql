with source as (
      select * from {{ source('stackoverflow', 'users') }}
),
renamed as (
    select
        id :: int,
        display_name,
        about_me,
        age :: int,
        creation_date :: timestamp,
        last_access_date :: timestamp,
        location,
        reputation :: int,
        up_votes :: int,
        down_votes :: int,
        views :: int,
        profile_image_url,
        website_url

    from source
)
select * from renamed
  