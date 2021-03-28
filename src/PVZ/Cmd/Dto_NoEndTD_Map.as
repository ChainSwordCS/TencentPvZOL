package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Dto_NoEndTD_Map extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Dto_NoEndTD_Map";
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_NoEndTD_Map.level","level",1 << 3 | WireType.VARINT);
      
      public static const MAPID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_NoEndTD_Map.mapId","mapId",2 << 3 | WireType.VARINT);
       
      
      private var level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var mapId$field:uint;
      
      public function Dto_NoEndTD_Map()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Dto_NoEndTD_Map.$MessageID;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 &= 4294967294;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearMapId() : void
      {
         this.hasField$0 &= 4294967293;
         this.mapId$field = new uint();
      }
      
      public function get hasMapId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set mapId(param1:uint) : void
      {
         this.hasField$0 |= 2;
         this.mapId$field = param1;
      }
      
      public function get mapId() : uint
      {
         return this.mapId$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasMapId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.mapId$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc5_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc5_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc5_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_NoEndTD_Map.level cannot be set twice.");
                  }
                  _loc3_++;
                  this.level = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_NoEndTD_Map.mapId cannot be set twice.");
                  }
                  _loc4_++;
                  this.mapId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc5_);
                  break;
            }
         }
      }
   }
}
