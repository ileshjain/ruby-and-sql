# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

#puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table

new_company = Company.new
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://apple.com"
new_company.save
#puts "There are #{Company.all.count} companies"

new_company = Company.new
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "WA"
new_company.save
#puts "There are #{Company.all.count} companies"

new_company = Company.new
new_company["name"] = "Twitter"
new_company["city"] = "San Francisco"
new_company["state"] = "CA"
new_company.save
puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

all_companies = Company.all 
cali_companies = Company.where({"state" => "CA"})
puts "California companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple
apple = Company.find_by({"name" => "Apple"})
p apple

# 5. read a row's column value

p apple["name"]
p apple["url"]
p apple["id"]

# 6. update a row's column value

twitter = Company.find_by({"name" => "Twitter"})
#p twitter
twitter["url"] = "https://twitter.com"
twitter["name"] = "X (formerly Twitter)"
#p twitter
twitter.save 

# 7. delete a row

x = Company.find_by({"name" => "X (formerly Twitter)"})
x.destroy 