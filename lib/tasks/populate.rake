require "populator"

desc "Simulate load against HubStub application"
task :populate => :environment do

  Order.populate(50_000) do |order|
    order.user_id = User.find(rand(200_000) + 1).id
    order.status = "ordered"
  end
  
end