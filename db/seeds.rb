#ScrapperResult.delete_all
#ScheduledWork.delete_all
#SiteCapture.delete_all

#Primera empresa
#SiteCapture.create(name: "Staples", description: "We inspire people to work smarter, learn more and grow every day. We are here to be a trusted ally, a resource and a sounding board, motivated to support our customers with expert knowledge, unique products and innovative services from Solutionshop, made for the changing needs of today’s entrepreneurs, teachers, parents and students.", url_site: "https://www.staples.ca", status_site:true)
#ScheduledWork.create(site_captures_id: SiteCapture.last.id, date_time: DateTime.now, status_scheduled:true)
1.times do |i|
    ScrapperResult.create(site_captures_id: SiteCapture.last.id , scheduled_works_id: ScheduledWork.first.id , brand:"Brother", glosa: "DR620 Drum Cartridge", url:"http://google.cl", price:"#{rand(10000)}", sale:"#{rand(1000)}")
end
1.times do |i|
    ScrapperResult.create(site_captures_id: SiteCapture.last.id , scheduled_works_id: ScheduledWork.first.id , brand:"Brother", glosa: "DR820 Drum Cartridge", url:"http://google.cl", price:"#{rand(10000)}", sale:"#{rand(1000)}")
end
1.times do |i|
    ScrapperResult.create(site_captures_id: SiteCapture.last.id , scheduled_works_id: ScheduledWork.first.id , brand:"Brother", glosa: "DR630 Drum Unit (DR630)", url:"http://google.cl", price:"#{rand(10000)}", sale:"#{rand(1000)}")
end



#segunda empresa
#SiteCapture.create(name: "precisionroller", description: "", url_site: "https://www.precisionroller.com/?msclkid=c09e1561ad221f155d27762f445a3970&utm_source=bing&utm_medium=cpc&utm_campaign=Precision%20Roller%20-%20Promo%20Ads&utm_term=canada%20toner&utm_content=PR", status_site:true)
1.times do |i|
    ScrapperResult.create(site_captures_id: SiteCapture.last.id , scheduled_works_id: ScheduledWork.first.id , brand:"Brother", glosa: "TN-850 Compatible Black High Yield Toner Cartridge", url:"https://www.precisionroller.com/tn-850-for-brother/details_pn_85646.html", price:"#{rand(10000)}", sale:"#{rand(1000)}")
end
1.times do |i|
    ScrapperResult.create(site_captures_id: SiteCapture.last.id , scheduled_works_id: ScheduledWork.first.id , brand:"Brother", glosa: "DR820 (DR-820) Black Drum Unit", url:"https://www.precisionroller.com/search.php?q=dr820&x=0&y=0", price:"#{rand(10000)}", sale:"#{rand(1000)}")
end
