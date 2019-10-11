# Script fetches the newest icon names from the Font-Awesome GitHub project and generates the FontAwesome21.qml

import yaml
import urllib.request

OUTPUT_FILE = "./FontAwesome21.qml"
TEMPLATE_FILE = "./template21"

print("Fetching icon metadata ...")

with urllib.request.urlopen("https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/metadata/icons.yml") as iStream:
    try:
        # Get Icons.yml from GitHub
        icons = yaml.safe_load(iStream)

        # Start new QML file
        output = open(OUTPUT_FILE, 'w')

        # Get template
        print("Reading template {} ...".format(TEMPLATE_FILE))
        template = open(TEMPLATE_FILE, 'r')
        output.write(template.read())
        template.close()

        # Iterate through all icons and get unicode
        print("Writing icons and template to {} ...".format(OUTPUT_FILE))
        for icon in icons:
            parts = icon.split('-')

            # Convert names to camelcase
            iconName = ""
            for i in range(len(parts)):
                part = parts[i]
                if (i > 0):
                    part = part.title()
                elif (part[0].isdigit()):
                    part = "_" + part
                iconName += part

            # Check for not allowed icon names
            if (iconName == "print"):
                iconName = "_" + iconName

            # Write property to file
            output.write("    property string " + iconName + " : " + "\"\\u" + icons[icon]["unicode"] + "\"\n")

        output.write("}")
        output.close()
        print("Done.")

    except yaml.YAMLError as exc:
        print(exc)
