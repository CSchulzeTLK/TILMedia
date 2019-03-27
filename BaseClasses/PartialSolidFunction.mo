﻿within TILMedia.BaseClasses;
partial function PartialSolidFunction

  annotation (Icon(graphics={Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Images/Icon_Solid_Function.png")}));

end PartialSolidFunction;
