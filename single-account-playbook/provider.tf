terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = "1.49.0"
    }
  }
}
provider "huaweicloud" {
  region     = "ap-southeast-3"
}