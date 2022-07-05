import type {HostComponent, ViewProps} from 'react-native';
import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';

interface NativeProps extends ViewProps {
  color: string;
}

export default codegenNativeComponent<NativeProps>(
  'ThubView',
) as HostComponent<NativeProps>;
