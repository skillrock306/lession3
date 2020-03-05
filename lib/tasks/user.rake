namespace :user do
	desc "TODO"
  task say_hello: :environment do
    p "hello"
  end
  task create_user: :environment do
    User.create(name: "quoc_trung", email: "trung1111@gmail.ccom", password: "123456")
    p "create user done"
  end
  task create_user_10000: :environment do
    10000.times {
      User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "123456")
    }
  end


	# task :create_micropost, [:categories_id] => [:environment] ,[:user_id] => [:environment] do |task,arg,args|
 #    Micropost.create(content: "content rake task",categories_id: arg[:categories_id] ,user_id: args[:user_id])
 #  end
end
