
# Blackboard

>[!NOTE]
>SI Customer Innovation (CI) is currrently piloting the concept of Innovation Cookbooks, Recipes and Ingredients.
>[!IMPORTANT]
> The data in here is not to be used, or assumed to be real in any way. It is simply included to test the concepts.

## Introduction

Provides a system for Unity objects to find eachother when they cannot hold direct references to one another.

## Usage

Blackboard uses Keys and KeySets from the Microsoft.Collections.Unity package to reference objects in the editor. To get started you'll need to

create a new KeySet

![New KeySet](../images/Blackboard_images/NewKeySet.png "")

add Keys to the set

![Add Keys](../images/Blackboard_images/AddKeys.png "")

put your object onto the blackboard with BlackboardSetter component

![Setter](../images/Blackboard_images/Setter.png "")

write a script that references a blackboard key and retrieves the object and uses it

```c#
public class LogBlackboardObject : MonoBehaviour
{
    public Key BlackboardKey;
    private IEnumerator Start()
    {
        yield return Cache.WaitForGlobalAnchors(BlackboardKey);
        string name = Cache.RetrieveByKey(BlackboardKey).name;
        Debug.LogFormat("Found {0}", name);
    }
}
```

or use one of the *Helper* components from Blackboard or Blackbloard.Utilities for built-in functionality.

>[!TIP]
>Try to use the coroutine pattern above for retrieval. This has the advantage of making your code robust to order of execution issues but also will provide debug warnings when your objects aren't found for long frame durations. This can help you find when you've removed a blackboard object that other objects still depend on.

## Helpers

### Blackboard Setter

BlackboardSetter puts an object on the Blackboard. You can choose which object creation phase you want it to happen during. OnAwake, OnStart, OnEnable or choose Manual and write a script that triggers the setter. There is also an option to remove the object OnDisable.

### Blackboard Registrar

The BlackboardRegistrar will register inactive child objects with the Blackboard. Add BlackboardSetter to any inactive child and set the phase to Manual.

### Blackboard Object Tracker

BlackboardObjectTracker is an abstract class for creating components that respond to items being added or removed from the blackboard.
Basic functionality includes selecting a key and timeout function calls.

#### Abstract Methods

**ObjectFound();**
An object was found on the blackboard with the specified key

**ObjectRemoved();**
The specified key was removed from the blackboard

**LookingTimeout();**
Looking for the object on the blackboard has taken longer than the timeout time.

**TrackingTimeout();**
The object was found but exists on the blackboard longer than the timeout time.

#### BlackboardOnAddEvents

Extends BlackboardObjectTracker and exposes events for an item being added to the blackboard with the option to timeout if an item is never added.

![BlackboardOnAddEvents](../images/Blackboard_images/BlackboardOnAddEvents.png)

#### BlackboardOnRemoveEvents

Extends BlackboardObjectTracker and exposes events for an item being removed to the blackboard with the option to timeout.

![BlackboardOnRemoveEvents](../images/Blackboard_images/BlackboardOnRemoveEvents.png)
