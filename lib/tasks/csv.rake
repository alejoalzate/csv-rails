namespace :csv do
  desc "TODO"
  task import: :environment do
    Dir["#{Rails.root}/csvs/*.csv"].each do |path|
      ImportCsv.import path
    end
  end

end
