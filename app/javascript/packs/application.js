import ReactOnRails from 'react-on-rails';
import HelloWorld from '../bundles/HelloWorld/components/HelloWorld';
import { helloworldv2 as HelloWorldv2 } from '../bundles/HelloWorldRescript.bs.js';
import { formPageJournal as FormPageJournal } from '../bundles/FormPageRescript.bs.js'


ReactOnRails.register(
    {
        HelloWorld,
        HelloWorldv2,
        FormPageJournal
    }
);
