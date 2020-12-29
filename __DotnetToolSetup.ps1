# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
	param($commandName, $wordToComplete, $cursorPosition)

	dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
		[System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
	}
}

# https://github.com/natemcmaster/dotnet-tools

# https://github.com/dotnet/templating/wiki/Available-templates-for-dotnet-new
dotnet new -i "Auth0.Templates::*"
dotnet new -i "identityserver4.templates::*"
dotnet new -i "Amazon.Lambda.Templates::*"
dotnet new -i "Microsoft.AspNetCore.Blazor.Templates::3.0.0-*"

dotnet tool install -g ElectronNET.CLI
dotnet tool install -g Microsoft.DotNet.Mage

dotnet tool install -g Microsoft.dotnet-httprepl

dotnet tool install -g apiport

dotnet tool install -g try-convert

dotnet tool install -g dotnet-dev-certs

# dotnet dev-certs https --trust

dotnet tool install -g base64urls

dotnet tool install -g dotnet-certes

dotnet tool install -g dotnet-guid

dotnet tool install -g dotnet-project-licenses

dotnet tool install -g dotnet-property #update - Version, Copyright, etc...

dotnet tool install -g dotnet-dbinfo

dotnet tool install -g dotnet-depends

dotnet tool install -g dotnet-file

dotnet tool install -g dotnet-retire

dotnet tool install -g dotnet-runas

dotnet tool install -g CSharpToTypeScript.CLITool # dotnet-cs2ts

dotnet tool install -g TheBlueSky.DotNet.Tools.SwiftHash # dotnet-hash

dotnet tool install -g dotnet-config2json

dotnet tool install -g dotnet-svcutil

dotnet tool install -g dotnet-xscgen

dotnet tool install -g dotnet-xdt

dotnet tool install -g Microsoft.DotNet.Mage

dotnet tool install -g dotnet-versioninfo

dotnet tool install -g dotnet-runtimeinfo

dotnet tool install -g coverlet.console #optional use
dotnet tool install -g dotnet-reportgenerator-globaltool

dotnet tool install -g microsoft.dotnet-interactive

dotnet tool install -g xunit-cli


dotnet tool install -g dotnet-serve

dotnet tool install -g DotNetSimpleServer # dotnet-server

