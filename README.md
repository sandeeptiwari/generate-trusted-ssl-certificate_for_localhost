# Steps 1:

git clone https://github.com/sandeeptiwari/generate-trusted-ssl-certificate_for_localhost.git
cd generate-trusted-ssl-certificate_for_localhost
bash generate.sh

# Step 2: Install the certificate
We have to make sure the browser trust our certificate, so we’re going to install it on our local machine.

# Windows 10

Double click on the certificate (server.crt)
Click on the button “Install Certificate …”
Select whether you want to store it on user level or on machine level
Click “Next”
Select “Place all certificates in the following store”
Click “Browse”
Select “Trusted Root Certification Authorities”
Click “Ok”
Click “Next”
Click “Finish”
If you get a prompt, click “Yes”

# Steps 3:

Create a folder ssl in the application folder.

angular-app:
  - e2e
  - src
  - ssl -> Copy the private key and root certificate from step 1 into the ssl folder
  
# In Angula 6

"serve": {
          "builder": "@angular-devkit/build-angular:dev-server",
          "options": {
            "browserTarget": "bingClient:build",
            "ssl": true,
            "sslKey": "ssl/<your_ssl_certificate>.key",
            "sslCert": "ssl/<your_ssl_certificate>.crt"
          }
		  ...
	    }
		
# Run 
  > ng serve