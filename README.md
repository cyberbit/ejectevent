# EjectEvent

When installed, this script will capture events caused by failed attempts to safely eject media on Windows 10. An Action Center notification will appear when media fails to eject, containing information about the process that prevented the action.

To install:
 - Save this repository somewhere on your computer.
 - In administrator PowerShell prompt:
    ```
    Install-Module BurntToast
    ```
 - In Event Viewer, under **System**, click **Filter Current Log**. Where it says "All Event IDs", input "225".
 - Create a scheduled task for the event using **Attach Task To This Event** while in the filtered view. Click Next until an input for **Program/script** appears, and enter the following, replacing `<script>` with the full path to EjectEvent.ps1:
    ```
    powershell -NonInteractive -Window Hidden <script>
    ```
 - Click Yes, then Finish.
