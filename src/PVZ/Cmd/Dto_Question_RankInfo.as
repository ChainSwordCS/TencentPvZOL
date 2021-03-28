package PVZ.Cmd
{
   import com.tencent.protobuf.Int64;
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT64;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Dto_Question_RankInfo extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Dto_Question_RankInfo";
      
      public static const ROLEID:FieldDescriptor$TYPE_INT64 = new FieldDescriptor$TYPE_INT64("PVZ.Cmd.Dto_Question_RankInfo.RoleId","roleId",1 << 3 | WireType.VARINT);
      
      public static const VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_Question_RankInfo.Value","value",2 << 3 | WireType.VARINT);
      
      public static const QQFACEURL:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("PVZ.Cmd.Dto_Question_RankInfo.QQFaceUrl","qQFaceUrl",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const FACEID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_Question_RankInfo.FaceId","faceId",4 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("PVZ.Cmd.Dto_Question_RankInfo.Name","name",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_Question_RankInfo.Level","level",6 << 3 | WireType.VARINT);
      
      public static const TIMESTAMP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_Question_RankInfo.Timestamp","timestamp",7 << 3 | WireType.VARINT);
       
      
      private var RoleId$field:Int64;
      
      private var Value$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var QQFaceUrl$field:String;
      
      private var FaceId$field:uint;
      
      private var Name$field:String;
      
      private var Level$field:uint;
      
      private var Timestamp$field:uint;
      
      public function Dto_Question_RankInfo()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Dto_Question_RankInfo.$MessageID;
      }
      
      public function clearRoleId() : void
      {
         this.RoleId$field = null;
      }
      
      public function get hasRoleId() : Boolean
      {
         return this.RoleId$field != null;
      }
      
      public function set roleId(param1:Int64) : void
      {
         this.RoleId$field = param1;
      }
      
      public function get roleId() : Int64
      {
         return this.RoleId$field;
      }
      
      public function clearValue() : void
      {
         this.hasField$0 &= 4294967294;
         this.Value$field = new uint();
      }
      
      public function get hasValue() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set value(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.Value$field = param1;
      }
      
      public function get value() : uint
      {
         return this.Value$field;
      }
      
      public function clearQQFaceUrl() : void
      {
         this.QQFaceUrl$field = null;
      }
      
      public function get hasQQFaceUrl() : Boolean
      {
         return this.QQFaceUrl$field != null;
      }
      
      public function set qQFaceUrl(param1:String) : void
      {
         this.QQFaceUrl$field = param1;
      }
      
      public function get qQFaceUrl() : String
      {
         return this.QQFaceUrl$field;
      }
      
      public function clearFaceId() : void
      {
         this.hasField$0 &= 4294967293;
         this.FaceId$field = new uint();
      }
      
      public function get hasFaceId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set faceId(param1:uint) : void
      {
         this.hasField$0 |= 2;
         this.FaceId$field = param1;
      }
      
      public function get faceId() : uint
      {
         return this.FaceId$field;
      }
      
      public function clearName() : void
      {
         this.Name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.Name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.Name$field = param1;
      }
      
      public function get name() : String
      {
         return this.Name$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 &= 4294967291;
         this.Level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 |= 4;
         this.Level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.Level$field;
      }
      
      public function clearTimestamp() : void
      {
         this.hasField$0 &= 4294967287;
         this.Timestamp$field = new uint();
      }
      
      public function get hasTimestamp() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set timestamp(param1:uint) : void
      {
         this.hasField$0 |= 8;
         this.Timestamp$field = param1;
      }
      
      public function get timestamp() : uint
      {
         return this.Timestamp$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRoleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT64(param1,this.RoleId$field);
         }
         if(this.hasValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.Value$field);
         }
         if(this.hasQQFaceUrl)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.QQFaceUrl$field);
         }
         if(this.hasFaceId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.FaceId$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.Name$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.Level$field);
         }
         if(this.hasTimestamp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.Timestamp$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc10_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc10_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc10_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Question_RankInfo.roleId cannot be set twice.");
                  }
                  _loc3_++;
                  this.roleId = ReadUtils.read$TYPE_INT64(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Question_RankInfo.value cannot be set twice.");
                  }
                  _loc4_++;
                  this.value = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 3:
                  if(_loc5_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Question_RankInfo.qQFaceUrl cannot be set twice.");
                  }
                  _loc5_++;
                  this.qQFaceUrl = ReadUtils.read$TYPE_STRING(param1);
                  break;
               case 4:
                  if(_loc6_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Question_RankInfo.faceId cannot be set twice.");
                  }
                  _loc6_++;
                  this.faceId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 5:
                  if(_loc7_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Question_RankInfo.name cannot be set twice.");
                  }
                  _loc7_++;
                  this.name = ReadUtils.read$TYPE_STRING(param1);
                  break;
               case 6:
                  if(_loc8_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Question_RankInfo.level cannot be set twice.");
                  }
                  _loc8_++;
                  this.level = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 7:
                  if(_loc9_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_Question_RankInfo.timestamp cannot be set twice.");
                  }
                  _loc9_++;
                  this.timestamp = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc10_);
                  break;
            }
         }
      }
   }
}
