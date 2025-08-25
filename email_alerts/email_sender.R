## Script to produce and send the email alerts to those signed up
## Schoodic Institute at Acadia National Park


#------------------------------------------------#
####           Packages Required              ####
#------------------------------------------------#
library(blastula)


#------------------------------------------------#
####         Create and send email            ####
#------------------------------------------------#

## Can run to see example of what the email will look like
# my_email_object <- render_email('outputs/emailtest.Rmd')
# print(my_email_object)

## Produce and send the email
smtp_send(render_email('email_alerts/email_material.Rmd'), 
          from = "klima@schoodicinstitute.org", 
          to = c("klima@schoodicinstitute.org"),
          subject = "Weekly early detection report", 
          credentials = creds_file("email_alerts/kmail")
)




