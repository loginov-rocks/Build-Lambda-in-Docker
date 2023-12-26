import { S3Client } from '@aws-sdk/client-s3';
import * as sharp from 'sharp';

exports.handler = async (event) => {
  console.log('event', JSON.stringify(event));

  return {};
}
