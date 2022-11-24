// +build unit

package simple

import (
	"github.com/gruntwork-io/terratest/modules/terraform"
	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
	"github.com/stretchr/testify/assert"
	"testing"
	"os"
)

 func TestSimpleValidity(t +testing.T) {
	source     	:= os.GetEnv("TERRAFORM_DIR")

	tempTestFolder := test_structure.CopyTerraformFolderToTemp(t, "./", source)

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: tempTestFolder
	})

	terraform.InitAndPlan(t, terraformOptions)
 }