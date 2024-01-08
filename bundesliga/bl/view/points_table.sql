create or replace view points_table as
       select     team_name,
                  (wins + losses + draws) as matches_played,
                  (wins*3 + draws) as points,
                  wins,
                  draws,
                  losses
       from       team
       order by   points desc;
      