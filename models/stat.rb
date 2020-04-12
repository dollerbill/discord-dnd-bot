# Table: stats
# Columns:
#  id           | bigint                      | PRIMARY KEY DEFAULT nextval('stats_id_seq'::regclass)
#  armor_class  | integer                     |
#  charisma     | integer                     | NOT NULL
#  constitution | integer                     | NOT NULL
#  dexterity    | integer                     | NOT NULL
#  experience   | integer                     | NOT NULL DEFAULT 0
#  hp           | integer                     | NOT NULL
#  hp_max       | integer                     | NOT NULL
#  intelligence | integer                     | NOT NULL
#  level        | integer                     | NOT NULL DEFAULT 1
#  failure      | integer                     | NOT NULL DEFAULT 0
#  success      | integer                     | NOT NULL DEFAULT 0
#  strength     | integer                     | NOT NULL
#  wisdom       | integer                     | NOT NULL
#  status       | text                        |
#  alive        | boolean                     | NOT NULL DEFAULT true
#  unconscious  | boolean                     | NOT NULL DEFAULT false
#  created_at   | timestamp without time zone | NOT NULL DEFAULT '2020-04-07 00:39:30.24872'::timestamp without time zone
#  updated_at   | timestamp without time zone | NOT NULL DEFAULT '2020-04-07 00:39:30.248723'::timestamp without time zone
# Indexes:
#  stats_pkey | PRIMARY KEY btree (id)

class Stat < Sequel::Model
  one_to_one :monster
  one_to_one :player
end
