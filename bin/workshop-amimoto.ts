#!/usr/bin/env node
import 'source-map-support/register';
import cdk = require('@aws-cdk/cdk');
import { WorkshopAmimotoStack } from '../lib/workshop-amimoto-stack';

const app = new cdk.App();
new WorkshopAmimotoStack(app, 'WorkshopAmimotoStack');
app.run();
