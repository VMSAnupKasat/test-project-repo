# Spyglass

>[!NOTE]
>SI Customer Innovation (CI) is currrently piloting the concept of Innovation Cookbooks, Recipes and Ingredients.
>[!IMPORTANT]
> The data in here is not to be used, or assumed to be real in any way. It is simply included to test the concepts.

## Overview

**Spyglass** solves an annoying usability issue in Unity where it is hard to find answers to script & asset dependency questions such as:

- Where is this script used? In which scene or prefab?
- Which game object or prefab is using this specific material or audio clip?
- Which material is using this texture or shader?

Not having these answers makes it particularly hard for new team members to onboard to an existing project.

Spyglass focuses on finding references, missing references and dependencies within Unity.

Note that SpyGlass **doesn't search for references between scripts**; most code editors provide a feature for this, e.g.: "Find All References" in Visual Studio.

You can open the Spyglass window from the Spyglass menu under **Tools** or via its keyboard shortcut: Ctrl + Alt + S

![alt text](../images/spyglass_images\menuShortcut.PNG)

## Configuration

Spyglass can be configured to exclude certain asset paths when performing its scene and project reference searches.
The package provides a configuration asset preset with a number of excluded paths, and you can create additional configurations by selecting either the **Assets > Create > Spyglass Config** menu item, or from the context menu displayed from a right-click in the *Project* view.

The default configuration, or a custom configuration, can be quickly viewed by selecting the **Tools > Spyglass > Configure exclusions** menu item (if more than one custom configuration exists, only the first can be shown via this method).

Selected configurations are shown in the Inspector view.

## Find References

This tab will let you search for **asset references inside scenes and prefabs**.

![alt text](../images/spyglass_images\findReferences.PNG)

Drop an asset onto (or pick from) the Object-picker field. You can search for the following asset types:

* MonoScript
* ScriptableObject
* Prefab
* Material
* Animator
* Shader
* Texture2D
* AudioClip

You can search into:

![alt text](../images/spyglass_images\findReferencesWhere.PNG)

Here is an example search of a material called 'AMaterial' within all scenes & prefabs. You can see that Spyglass found 2 references (inside a prefab and a scene).

![alt text](../images/spyglass_images\findReferencesResult.PNG)

You can then quickly navigate to the found asset by clicking on the Console window.

![alt text](../images/spyglass_images\findReferencesConsole.PNG)

## Find Missing References

This tab will let you search for missing references inside scenes and prefabs.

![alt text](../images/spyglass_images\findMissingReferences.PNG)

Note that the same search options are available (loaded scenes, all prefabs etc..).

Here is an example where we found missing references inside a 'Cube' prefab and inside the Spyglass test scene (used by the unit tests).

![alt text](../images/spyglass_images\findMissingReferencesResult.PNG)

The console will let you select prefabs and scenes and should give you some information about what was found:

![alt text](../images/spyglass_images\findMissingReferencesResultConsole.PNG)

Here is the cube prefab where you can notice the missing script.

![alt text](../images/spyglass_images\findMissingReferencesPrefab.PNG)

## Dependency Checker

This tab will let you search for dependencies between assets.

![alt text](../images/spyglass_images\dependencyChecker.PNG)

### 1) Select some assets in the Project tab

![alt text](../images/spyglass_images\dependencyCheckerAssetSelection.PNG)

### 2) Click on Copy Selected Asset Path(s) and then on Find..

Spyglass should now search where the Foo script is used.

![alt text](../images/spyglass_images\dependencyCheckerResult.PNG)

![alt text](../images/spyglass_images\dependencyCheckerResultConsole.PNG)

Note that this feature uses the assets guid containing in their meta files to find dependencies.

## Dependency Walker

This tab gives you access to a hierarchical dependency tree that you can freely navigate.

Select an asset from the Project tab (or pick from the Object-picker field) to select a starting point. Lists of assets used by the selection, and the assets that use the selection will be displayed, if any exist. Click the buttons in the lists to 'walk the dependency tree'.

Spyglass generates a database storing dependency links based on your current Asset set, but this can go stale if you add, remove or edit assets significantly. Click the Rebuild button to bring the database back up to date.

## FAQ

### How do I find out which scene or prefab use a specific component?

- Switch current tab to 'Find References'
- For 'What?' select 'Mono Script' then select which script to search for
- Decide where to search for.. if you're unsure use 'Project All' for 'Where?'

![alt text](../images/spyglass_images\faq1.jpg)

- Click on the console to select project assets

### How do I find out where a specific material is used?

- Switch current tab to 'Find References'
- For 'What?' select 'Material' then select which material to search for
- Decide where to search for.. if you're unsure use 'Project All' for 'Where?'

![alt text](../images/spyglass_images\faq2.jpg)

### How do I find out where a specific prefab is used?

- Switch current tab to 'Find References'
- For 'What?' select 'Prefab' then select which prefab to search for
- Decide where to search for.. if you're unsure use 'Project All' for 'Where?'

![alt text](../images/spyglass_images\faq3.jpg)
