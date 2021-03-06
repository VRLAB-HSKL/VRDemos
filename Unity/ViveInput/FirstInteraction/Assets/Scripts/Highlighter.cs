﻿using UnityEngine;
using HTC.UnityPlugin.Vive;

/// <summary>
/// Highlighter für ein GameObject,
/// abhängig von einem Tastendruck auf einem Controller.
/// 
/// Wir verwenden das Observer-Pattern.
/// <remarks>
/// Version mit Vive Input Utility
/// 
/// Die Basisklasse enthält die vom VR-Package
/// unabhängigen Bestandteile!
/// </remarks>
/// </summary>
public class Highlighter : View
{
    /// <summary>
    /// Der verwendete Button kann im Editor mit Hilfe
    /// eines Pull-Downs eingestellt werden.
    /// 
    /// Default ist der Trigger der Controller.
    /// </summary>
    [Tooltip("Welcher Button auf dem Controller soll verewendet werden?")]
    public ControllerButton theButton = ControllerButton.Trigger;

    /// <summary>
    /// In Awake erstellen wir den Controller und stellen
    /// die Verbindung zur Model-Klasse her.
    /// </summary>
    private void Awake()
    {
        Mod = new Model(false);
        Mod.Attach(this);

        // Listener für den Button registrieren
        ViveInput.AddListenerEx(HandRole.RightHand,
                                theButton,
                                ButtonEventType.Down,
                                Mod.Toggle);

        ViveInput.AddListenerEx(HandRole.RightHand,
                                theButton,
                                ButtonEventType.Up,
                                Mod.Toggle);

        ViveInput.AddListenerEx(HandRole.LeftHand,
                                theButton,
                                ButtonEventType.Down,
                                Mod.Toggle);

        ViveInput.AddListenerEx(HandRole.LeftHand,
                                theButton,
                                ButtonEventType.Up,
                                Mod.Toggle);
    }

    /// <summary>
    /// Listener wieder aus der Registrierung
    /// herausnehmen beim Beenden der Anwendung
    /// </summary>
    private void OnDestroy()
    {
        ViveInput.RemoveListenerEx(HandRole.RightHand,
                                   theButton,
                                   ButtonEventType.Down,
                                   Mod.Toggle);

        ViveInput.RemoveListenerEx(HandRole.RightHand,
                                   theButton,
                                   ButtonEventType.Up,
                                   Mod.Toggle);

        ViveInput.RemoveListenerEx(HandRole.LeftHand,
                                   theButton,
                                   ButtonEventType.Down,
                                   Mod.Toggle);

        ViveInput.RemoveListenerEx(HandRole.LeftHand,
                                   theButton,
                                   ButtonEventType.Up,
                                   Mod.Toggle);
    }
}
