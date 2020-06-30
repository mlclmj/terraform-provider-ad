module github.com/gslabdev/terraform-provider-ad

go 1.14

require (
	github.com/GSLabDev/terraform-provider-ad v0.0.0-20200615072029-540d8de3f57d
	github.com/go-asn1-ber/asn1-ber v1.3.2-0.20191121212151-29be175fc3a3
	github.com/hashicorp/terraform v0.12.26
	gopkg.in/ldap.v3 v3.1.3
)

replace gopkg.in/ldap.v3 => github.com/go-ldap/ldap/v3 v3.1.3
