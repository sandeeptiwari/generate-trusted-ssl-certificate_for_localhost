# Running Angular App over HTTPS with a Trusted Certificate

# Steps 1:

1- git clone https://github.com/sandeeptiwari/generate-trusted-ssl-certificate_for_localhost.git

2- cd generate-trusted-ssl-certificate_for_localhost

3- bash generate.sh (download git for windows)

# Step 2: Install the certificate
We have to make sure the browser trust our certificate, so we’re going to install it on our local machine.

# Windows 10

1- Double click on the certificate (<your_ssl_certificate>.crt)

2- Click on the button “Install Certificate …”

3- Select whether you want to store it on user level or on machine level

4- Click “Next”

5- Select “Place all certificates in the following store”

6- Click “Browse”

7- Select “Trusted Root Certification Authorities”

8- Click “Ok”

9- Click “Next”

10- Click “Finish”

11- If you get a prompt, click “Yes”

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
