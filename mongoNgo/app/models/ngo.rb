class Ngo
  include Mongoid::Document
  field :ngo_id
  field :reg_id

  field :title
  field :description
  field :mobile
  field :email
  field :website
  field :fax
  field :telephone
  field :address

  field :work, :type => Array
  field :people, :type =>Hash
  field :genres, :type => Array
  field :registration_info, :type =>Hash
  field :state
  field :active_years
  field :is_registered
  field :key_work, :type => Array
  field :awards, :type => Array

  field :op_dist, :type => Array
  field :op_state, :type => Array
  
end
